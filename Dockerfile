# Don't Remove Credit @movie_file_20
# Subscribe YouTube Channel For Amazing Bot @JISSHU-BOT 
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster

RUN useradd -u 10014 myuser

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
USER 10014
RUN mkdir /Neha
WORKDIR /Neha
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
