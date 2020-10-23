FROM adoptopenjdk/openjdk8:centos-jre

USER root

RUN groupadd --gid 1000 java_group \
 && useradd --uid 1000 --gid java_group --shell /bin/bash --create-home java_user

USER java_user

COPY --chown=java_user:java_group target/*.jar /app.jar

EXPOSE 8080

CMD ["java","-jar","/app.jar"]

