FROM gradle:7.3.3-jdk17 as builder

WORKDIR /tmp/app
COPY . .
RUN gradle bootjar

FROM openjdk:17-oracle
WORKDIR /app
COPY --from=builder  /tmp/app/build/libs/aws-codepipeline-0.0.1.jar aws-codepipeline.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/aws-codepipeline.jar"]