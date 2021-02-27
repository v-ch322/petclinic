FROM openjdk:8-jdk-alpine
WORKDIR /usr/pet
# this was taken from the container
#ENV JAVA_HOME="/usr/lib/jvm/java-1.8-openjdk"
COPY . /usr/pet
RUN ./mvnw package -e -Dmaven.test.skip
CMD java -jar target/spring-petclinic-2.4.2.jar --spring.profiles.active=mysql
