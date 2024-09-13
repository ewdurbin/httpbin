FROM python:3.11-bullseye

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN set -x \
    && apt-get update \
    && apt-get install --no-install-recommends -y \
        htop vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /httpbin

ADD . /httpbin
RUN pip3 install --no-cache-dir gunicorn /httpbin
