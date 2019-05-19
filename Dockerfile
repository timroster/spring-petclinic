FROM openjdk:8-stretch

COPY target/*.jar /app.jar

EXPOSE 8080
CMD ["java","-Dspring.profiles.active=docker","-jar","/app.jar"]
