FROM openjdk:8u151-jdk-alpine3.7
VOLUME /tmp
COPY target/*.jar app.jar
RUN sh -c 'touch /app.jar'
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]