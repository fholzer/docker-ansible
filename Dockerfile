FROM python:2.7-alpine

RUN apk add --no-cache --virtual .run-deps \
		libffi \
		openssl \
	&& apk add --no-cache --virtual .build-deps \
		gcc \
		linux-headers \
		musl-dev \
		libffi-dev \
		make \
		openssl-dev \
	&& pip install --upgrade pip \
	&& pip install ansible \
	&& apk del .build-deps

WORKDIR /work
