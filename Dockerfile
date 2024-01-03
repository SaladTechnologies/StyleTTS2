FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
  espeak-ng \
  git \
  build-essential

RUN pip install --upgrade pip

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt