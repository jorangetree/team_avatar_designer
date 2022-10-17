from shapes import PatternFactory


class AvatarBuilder:
    @staticmethod
    def build():
        shape = PatternFactory.get_pattern()
        shape.paint()


if __name__ == '__main__':
    AvatarBuilder.build()
