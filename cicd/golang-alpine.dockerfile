FROM golang:alpine

RUN sed -i s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g /etc/apk/repositories \
    && apk add --no-cache git make gcc libc-dev tzdata \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \
    && git config --global credential.helper store \
    && git config --global http.sslVerify false
