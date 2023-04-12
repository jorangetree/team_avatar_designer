#!/bin/bash

mkdir nba_2023


# Miami Heat
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename miami_heat --color "#98002E" --border "#F9A01B"

# Atlanta Hawks
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename atlanta_hawks --colors "#C8102E" "#FDB927" --number-stripes 3 --direction vertical

# Toronto Raptors
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename toronto_raptors --color "#ce1141" --border "#000000"

# Chicago Bulls
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename chicago_bulls --colors "#CE1141" "#000000" --number-stripes 3 --direction vertical

# Milwaukee Bucks
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename milwaukee_bucks --colors "#00471B" "#EEE1C6" --number-stripes 2 --direction vertical --border "#0077c0"

# Cleveland Cavaliers
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename cleveland_cavalies --color "#860038" --border "#FDBB30"

# NY Knicks
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename ny_knicks --colors "#006BB6" "#F58426" --number-stripes 2 --direction vertical --border "#BEC0C2"

# Philadelphia 76ers
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename philadelphia_76ers --color "#006bb6" --border "#ed174c"

# Brooklyn Nets
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename brooklyn_nets --color "#ffffff" --border "#000000"

# Boston Celtics
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename boston_celtics --color "#ffffff" --border "#007A33"

# Denver Nuggets
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename denver_nuggets --colors "#0E2240" "#FEC524"  --number-stripes 2 --direction vertical --border "#8B2131"

# Phoenix Suns
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename phoenix_suns --background-color "#1d1160" --stripe-color "#e56020" --border "#000000" --direction right

# Sacramento Kings
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename sacramento_kings --color "#5a2d81" --border "#63727A"

# Memphis Grizzlies
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename memphis_grizzlies --colors "#5D76A9" "#12173F" --number-stripes 2 --direction vertical --border "#F5B112"

# LA Clippers
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename la_clippers --background-color "#ffffff" --stripe-color "#c8102E" --border "#1d428a" --direction right

# GS Warriors
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename gs_warriors --background-color "#006BB6" --stripe-color "#FDB927" --border "#FDB927" --direction right

# LA Lakers
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename la_lakers --background-color "#FDB927" --stripe-color "#552583" --border "#552583" --direction right

# Minnesota Timberwolves
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename minnesota_timberwolves --background-color "#236192" --stripe-color "#9ea2a2" --border "#0C2340" --direction right

# NO Pelicans
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename no_pelicans --colors "#0C2340" "#C8102E" --number-stripes 2 --direction vertical --border "#85714D"

# Oklahoma City Thunder
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename ok_city_thunder --colors "#007ac1" "#ef3b24" --number-stripes 2 --direction vertical --border "#002D62"


mv *png nba_2023
mv *svg nba_2023
