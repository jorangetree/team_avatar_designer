import argparse
import math
from enum import Enum

import cairo

from utils import from_hex_to_rgb


class PatternTypes(Enum):
    Flat = 0,
    Stripes = 1,
    DiagonalStripe = 2


class Pattern:
    def __new__(cls, size: float, filename: str, border=None):
        obj = super().__new__(cls)
        obj._size = size
        obj.__filename = filename
        obj.__border = border
        return obj

    def paint(self):
        ctx = self.__setup_canvas()

        # clipping
        ctx.arc(self._size / 2, self._size / 2, self._size / 2, 0, 2 * math.pi)
        ctx.clip()

        self._paint(ctx)

        if self.__border:
            ctx.set_source_rgb(*from_hex_to_rgb(self.__border))
            ctx.set_line_width(self._size / 10)
            ctx.arc(self._size / 2, self._size / 2, self._size / 2, 0, 2 * math.pi)
            ctx.stroke()

        self.__finish()

    @staticmethod
    def get_type():
        raise NotImplementedError

    def _paint(self, ctx: cairo.Context):
        raise NotImplementedError

    @staticmethod
    def _parse_known_args(argv: str) -> (argparse.Namespace, str):
        parser = argparse.ArgumentParser()
        parser.add_argument("--size", type=int, required=True)
        parser.add_argument("--filename", required=True)
        parser.add_argument("--border")
        return parser.parse_known_args(argv)

    def __setup_canvas(self) -> cairo.Context:
        self.__surface = cairo.SVGSurface(self.__filename + ".svg", self._size, self._size)
        return cairo.Context(self.__surface)

    def __finish(self):
        self.__surface.flush()
        self.__surface.write_to_png(self.__filename + ".png")
        self.__surface.finish()


class FlatPattern(Pattern):
    def __new__(cls, remaining_argv: str):
        base_args, remaining_argv = Pattern._parse_known_args(remaining_argv)
        args, _ = FlatPattern._parse_known_args(remaining_argv)
        obj = super().__new__(FlatPattern, base_args.size, base_args.filename, base_args.border)
        obj.__color = vars(args)["color"]
        return obj

    @staticmethod
    def _parse_known_args(argv: str) -> (argparse.Namespace, str):
        parser = argparse.ArgumentParser()
        parser.add_argument("--color", required=True)
        return parser.parse_known_args(argv)

    def _paint(self, ctx: cairo.Context):
        # background
        ctx.arc(self._size / 2, self._size / 2, self._size / 2, 0, 2 * math.pi)
        ctx.set_source_rgb(*from_hex_to_rgb(self.__color))
        ctx.fill()

    @ staticmethod
    def get_type():
        return PatternTypes.Flat


class StripsPattern(Pattern):
    class Direction(Enum):
        horizontal = 0,
        vertical = 1

    def __new__(cls, remaining_argv: str):
        base_args, remaining_argv = Pattern._parse_known_args(remaining_argv)
        args, _ = StripsPattern._parse_known_args(remaining_argv)
        obj = super().__new__(StripsPattern, base_args.size, base_args.filename, base_args.border)
        obj.__colors = vars(args)["colors"]
        obj.__number_stripes = vars(args)["number_stripes"]
        obj.__direction = vars(args)["direction"]
        return obj

    @staticmethod
    def _parse_known_args(argv: str) -> (argparse.Namespace, str):
        parser = argparse.ArgumentParser()
        parser.add_argument("--number-stripes", type=int, required=True)
        parser.add_argument("--colors", nargs='+', required=True)
        parser.add_argument("--direction", choices=[StripsPattern.Direction.horizontal.name, StripsPattern.Direction.vertical.name], required=True)
        return parser.parse_known_args(argv)

    def _paint(self, ctx: cairo.Context):
        stripe_width = self._size / self.__number_stripes

        for i in range(self.__number_stripes + 1):
            # stripe
            if self.__direction == StripsPattern.Direction.horizontal.name:
                ctx.move_to(0, (i*stripe_width)+(stripe_width/2))
                ctx.line_to(self._size, (i*stripe_width)+(stripe_width/2))
            else:
                ctx.move_to((i*stripe_width)+(stripe_width/2), 0)
                ctx.line_to((i*stripe_width)+(stripe_width/2), self._size)
            ctx.set_source_rgb(*from_hex_to_rgb(self.__colors[i % len(self.__colors)]))
            ctx.set_line_width(stripe_width)
            ctx.stroke()

    @ staticmethod
    def get_type():
        return PatternTypes.Stripes


class DiagonalStripPattern(Pattern):
    class Direction(Enum):
        right = 0,
        left = 1

    def __new__(cls, remaining_argv: str):
        base_args, remaining_argv = Pattern._parse_known_args(remaining_argv)
        args, _ = DiagonalStripPattern._parse_known_args(remaining_argv)
        obj = super().__new__(DiagonalStripPattern, base_args.size, base_args.filename, base_args.border)
        obj.__background_color = vars(args)["background_color"]
        obj.__stripe_color = vars(args)["stripe_color"]
        obj.__direction = vars(args)["direction"]
        return obj

    @staticmethod
    def _parse_known_args(argv: str) -> (argparse.Namespace, str):
        parser = argparse.ArgumentParser()
        parser.add_argument("--background-color", required=True)
        parser.add_argument("--stripe-color", required=True)
        parser.add_argument("--direction", choices=[DiagonalStripPattern.Direction.right.name, DiagonalStripPattern.Direction.left.name], required=True)
        return parser.parse_known_args(argv)

    def _paint(self, ctx: cairo.Context):
        # background
        ctx.arc(self._size / 2, self._size / 2, self._size / 2, 0, 2 * math.pi)
        ctx.set_source_rgb(*from_hex_to_rgb(self.__background_color))
        ctx.fill()

        # stripe
        if self.__direction == DiagonalStripPattern.Direction.right.name:
            ctx.move_to(0, self._size)
            ctx.line_to(self._size, 0)
        else:
            ctx.move_to(0, 0)
            ctx.line_to(self._size, self._size)

        ctx.set_source_rgb(*from_hex_to_rgb(self.__stripe_color))
        ctx.set_line_width(self._size / 4)
        ctx.stroke()

    @ staticmethod
    def get_type():
        return PatternTypes.DiagonalStripe


def get_pattern_classes():
    return Pattern.__subclasses__()


class PatternFactory(object):
    @staticmethod
    def get_pattern():
        subclasses = get_pattern_classes()
        parser = argparse.ArgumentParser()
        parser.add_argument("--pattern", help=f"Select the pattern type from these available", choices=[s.get_type().name for s in subclasses], required=True)
        args, remaining_argv = parser.parse_known_args()
        for subclass in get_pattern_classes():
            if subclass.get_type().name == vars(args)["pattern"]:
                return subclass(remaining_argv)
        raise RuntimeError
