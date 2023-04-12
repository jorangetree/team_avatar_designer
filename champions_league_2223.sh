#!/bin/bash

set -x

mkdir champions_league_2223


# Group A

# Napoli
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename napoli --color "#199fd6" --border "#003e81"

# Liverpool
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename liverpool --color "#d00027" --border "#00a398"

# Ajax
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename ajax --colors "#ffffff" "#d2122e"  --number-stripes 3 --direction vertical --border "#000000"

# Rangers
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename rangers --color "#1b458f" --border "#e51636"


# Group B

# Brugge
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename brugge --colors "#0078bf" "#000000"  --number-stripes 5 --direction vertical --border "#000000"

# Porto
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename porto --colors "#213560" "#ffffff"  --number-stripes 5 --direction vertical --border "#213560"

# Atlético de Madrid
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename atletico_madrid --colors "#ce3524" "#ffffff"  --number-stripes 5 --direction vertical --border "#262f61"

# Bayer Leverkusen
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename leverkusen --color "#e32221" --border "#f3e500"


# Group C

# Bayern Munich
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename munich --color "#dc052d" --border "#0066b2"

# Inter de Milan
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename inter --colors "#0267ab" "#000000"  --number-stripes 5 --direction vertical --border "#a29161"

# Barcelona
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename barcelona --colors "#004d98" "#a50044" --number-stripes 5 --direction vertical --border "#edbb00"

# Viktoria Plzen
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename viktoria_plzen --colors "#0062a9" "#e32219" --number-stripes 2 --direction vertical --border "#000000"


# Group D

# Tottenham
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename tottenham --color "#ffffff" --border "#132257"

# Marseille
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename marseille --colors "#ffffff" "#2faee0" --number-stripes 3 --direction vertical --border "#bea064"

# Sporting CP
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename sporting_cp --colors "#008057" "#ffffff" --number-stripes 5 --direction horizontal

# Eintracht Frankfurt
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename eintracht_frankfurt --colors "#e1000f" "#000000" --number-stripes 5 --direction vertical --border "#000000"


# Group E

# Chelsea
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename chelsea --color "#034694" --border "#dba111"

# Red Bull Salzsburg
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename redbull_salzburg --colors "#ffffff" "#df003c" --number-stripes 2 --direction vertical --border "#ffd300"

# Milan
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename ac_milan --colors "#000000" "#fb090b" --number-stripes 7 --direction vertical

# Dinamo Zagreb
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename d_zagreb --color "#004699" --border "#b91212"


# Group F

# Real Madrid
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename real_madrid --background-color "#ffffff" --stripe-color "#a47fbc" --border "#fcbf00" --direction left

# RB Leipzip
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename rb_leipzig --colors "#ffffff" "#dd0741" --number-stripes 3 --direction horizontal --border "#001f47"

# Shaktar Donetsk
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename s_donetsk --colors "#f0612c" "#000000" --number-stripes 5 --direction vertical

# Celtic
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename celtic --colors "#018749" "#ffffff" --number-stripes 7 --direction horizontal


# Group G

# Manchester City
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename city --color "#6caddf" --border "#00285e"

# Borussia Cortmund
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename borussia_dortmund --color "#fde100" --border "#000000"

# Sevilla
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename sevilla --colors "#ffffff" "#d70f21" --number-stripes 7 --direction vertical --border "#c79100"

# Copenhagen
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename copenhagen --color "#ffffff" --border "#375197"


# Group H

# PSG
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename psg --color "#004170" --border "#e30613"

# Benfica
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename benfica --colors "#e83030" "#e83030" "#ffffff" --number-stripes 3 --direction horizontal --border "#ffd432"

# Juventus
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename juventus --colors "#000000" "#ffffff" --number-stripes 7 --direction vertical

# Maccabi Haifa
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename maccabi --colors "#ffffff" "#176939" --number-stripes 2 --direction vertical --border "#000000"


mv *png champions_league_2223
mv *svg champions_league_2223
