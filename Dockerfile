FROM maven:3.5.4-jdk-8-alpine

LABEL maintainer Robin SEGURA <rsegura@outlook.fr>

CMD ["sh"]

RUN apk --upgrade install git curl bash grep nodejs nodejs-npm && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /home
