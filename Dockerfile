FROM python:3.10-slim

ENV DEBIAN_FRONTEND noninteractive

COPY requirements.txt .

RUN apt update && apt upgrade -y && apt install -y gcc libcairo2-dev libjpeg-dev libgif-dev; rm -rf /var/lib/apt/lists/

RUN python -m pip install -U --force-reinstall pip
RUN python -m pip install -r requirements.txt

# To execute this container you need to provide this shared folder -v local_source_path:/team_avatar_designer/
# Execution example: docker run team_avatar_designer python3 team_avatar_designer.py --shape stripe --background #ffffff --stripe #e53027

WORKDIR /team_avatar_designer
