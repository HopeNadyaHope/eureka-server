FROM adoptopenjdk/openjdk11:jdk-11.0.5_10-alpine
EXPOSE 8761
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} eureka-server.jar
ENTRYPOINT ["java","-jar","/eureka-server.jar"]