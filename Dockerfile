FROM openjdk

LABEL maintainer Robin SEGURA <rsegura@outlook.fr>

RUN apk --update add git openssh curl bash grep nodejs nodejs-npm && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /home

CMD ["sh"]
