FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt install python3.9 python3-pip python-is-python3 libgl1-mesa-glx axel sudo gdebi-core -y

RUN pip install --upgrade pip

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

RUN apt install -y debian-archive-keyring && \
    apt update -y && \
    apt install firefox firefox-geckodriver -y

RUN pip3 install selenium

COPY . .

ENTRYPOINT [ "python3", "main.py" ]