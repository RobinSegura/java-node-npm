FROM openjdk

LABEL maintainer Robin SEGURA <rsegura@outlook.fr>

CMD ["sh"]

RUN apt install git openssh curl bash grep nodejs nodejs-npm && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR /home
