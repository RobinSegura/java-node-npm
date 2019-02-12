FROM openjdk

LABEL maintainer Robin SEGURA <rsegura@outlook.fr>

CMD ["sh"]

RUN apt upgrade -y && \
    apt install git curl bash grep maven -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install nodejs -y && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR /home
