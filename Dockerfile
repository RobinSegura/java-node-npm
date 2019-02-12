FROM openjdk:8-alpine

LABEL maintainer GIA team <GIADev@west.com>

CMD ["sh"]
RUN apk --update add git curl bash grep maven nodejs nodejs-npm && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /home
