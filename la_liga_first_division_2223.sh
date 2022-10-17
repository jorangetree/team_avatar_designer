#!/bin/bash

mkdir la_liga_first_division_2223


# Almería
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename almeria --colors "#ffffff" "#ee1119" --number-stripes 5 --direction vertical --border "#ffbc00"

# Athletic de Bilbao
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename athletic_bilbao --colors "#ffffff" "#ee2523" --number-stripes 6 --direction vertical --border "#000000"

# Atlético de Madrid
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename atletico_madrid --colors "#ce3524" "#ffffff"  --number-stripes 5 --direction vertical --border "#262f61"

# Barcelona
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename barcelona --colors "#004d98" "#a50044" --number-stripes 5 --direction vertical --border "#edbb00"

# Cádiz
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename cadiz --colors "#fde607" "#0045a7" --number-stripes 2 --direction vertical

# Celta de Vigo
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Flat --size 200 --filename celta --color "#8ac3ee" --border "#e5254e"

# Elche
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern Stripes --size 200 --filename elche --colors "#ffffff" "#05642c" --number-stripes 3 --direction vertical --border "#e6c777"

# Espanyol
docker run -it --rm -v /home/josnar/Development/team_avatar_designer/:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename espanyol --background-color "#ffffff" --stripe-color "#1e6bc0" --border "#ff1119" --direction right

# Getafe

# Girona

mv *png la_liga_first_division_2223
mv *svg la_liga_first_division_2223
