# based from official node image (based on ubuntu:jessy)
from node:8 as nodeBuilder

LABEL maintainer GIA team <GIADev@west.com>

run mkdir /sources

COPY . /sources

WORKDIR /sources/webapp
run npm install
run npm run build

from maven:3.5.4-jdk-8-alpine as mavenBuilder

run mkdir /sources

WORKDIR /sources

COPY --from=nodeBuilder /sources .
run mvn clean test -Dspring.profiles.active=test

run mvn clean install -DskipTests

from java:8-jre-alpine

COPY --from=mavenBuilder /sources/target .

expose 9090

CMD ["/usr/bin/java", "-server", "-Djava.security.egd=file:/dev/./urandom", "-jar", "api.jar", "--spring.profiles.active=dev-01"]
