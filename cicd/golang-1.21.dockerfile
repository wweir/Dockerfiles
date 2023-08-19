FROM golang:1.21

RUN sed -i~ s#snapshot.debian.org/archive#mirrors.cloud.tencent.com#g /etc/apt/sources.list \
	&& rm -rf /etc/localtime \
	&& ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
	&& git config --global http.sslVerify false \
	&& git config --global credential.helper store

ENV GOPROXY https://goproxy.cn,direct
