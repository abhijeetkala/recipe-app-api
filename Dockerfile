FROM python:3.7-alpine
MAINTAINER Alva Web Developer Ltd

# Recommended when running python in Docker containers
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN  mkdir /app
WORKDIR /app
COPY ./app /app

#Creating seperate user to run our applications
#for security purposes

RUN adduser -D user
USER user
