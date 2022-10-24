# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# security related to user
RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring

# Refer to Maven build -> finalName
ARG JAR_FILE=target/spring-boot-web.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]