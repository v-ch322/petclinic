FROM maven:3.6-jdk-11-slim as BUILD
WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src/ /build/src/
RUN mvn package -Dmaven.test.skip=true

FROM openjdk:8-jre-alpine
EXPOSE 8080
WORKDIR /app
ARG JAR=spring-petclinic-2.4.2.jar

COPY --from=BUILD /build/target/$JAR /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
