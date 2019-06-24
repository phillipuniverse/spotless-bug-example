FROM openjdk:8u151-jdk-alpine
VOLUME /tmp
ADD run-app.sh run-app.sh
RUN chmod +x run-app.sh

ENTRYPOINT ./run-app.sh

ARG JAR_FILE
ADD ${JAR_FILE} app.jar

# http
EXPOSE 8080
# https
EXPOSE 8443
# debug
EXPOSE 8000
