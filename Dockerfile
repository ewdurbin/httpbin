FROM python:3.11-slim-bullseye

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

WORKDIR /httpbin

ADD . /httpbin
RUN pip3 install --no-cache-dir gunicorn /httpbin
