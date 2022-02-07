FROM gradle:7.3.3-jdk17 as builder

WORKDIR /tmp/app
COPY . .
RUN gradle bootjar

FROM openjdk:17-oracle
EXPOSE 8080
ADD libs/toolant-1.0.0.jar toolant.jar
ENTRYPOINT ["java","-jar","/toolant.jar"]