# Team Avatar Designer

Simple tool to generate team logos avoiding copyright problems.

# How to use

1. Create the docker image with the software


```shell
docker build -t team_avatar_builder .
```

2.- Create a script to use the image using any of those already created in the project

3.- Alternativelly, just execute the tool using the image just created


```shell
docker run -it --rm -v .:/team_avatar_designer team_avatar_builder python3 team_avatar_designer.py --pattern DiagonalStripe --size 200 --filename la_clippers --background-color "#ffffff" --stripe-color "#c8102E" --border "#1d428a" --direction right
```
