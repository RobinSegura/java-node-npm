FROM maven:3.5.4-jdk-8-alpine

LABEL maintainer Robin SEGURA <rsegura@outlook.fr>

CMD ["sh"]

RUN apt upgrade -y && \
    apt update -y && \
    apt install git curl bash grep -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install nodejs -y && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR /home
