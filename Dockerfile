FROM tomcat:9.0-jdk11

ENV CATALINA_HOME=/usr/local/tomcat
ENV DEPLOY_DIR=$CATALINA_HOME/webapps

WORKDIR /app

COPY ./app.war .

RUN cp /app/app.war $DEPLOY_DIR

EXPOSE 9091

CMD ["catalina.sh", "run"]
