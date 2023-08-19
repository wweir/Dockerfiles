FROM ubuntu:22.04

RUN sed -i 's#http://archive.ubuntu.com#http://opentuna.cn#g' /etc/apt/sources.list \
	&& apt-get update --allow-unauthenticated \
	&& apt-get install -y --no-install-recommends curl tzdata \
	&& echo Asia/Shanghai > /etc/timezone \
	&& ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& dpkg-reconfigure --frontend noninteractive tzdata \
	&& rm -rf /var/lib/apt/lists/*
