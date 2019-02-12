# based from official node image (based on ubuntu:jessy)
from openjdk:8

LABEL maintainer GIA team <GIADev@west.com>

CMD ["sh"]
RUN apt upgrade -y && \
    apt update -y && \
    apt install git curl bash grep maven -y && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt install nodejs -y && \
    rm -rf /var/lib/apt/lists/* 

WORKDIR /home
