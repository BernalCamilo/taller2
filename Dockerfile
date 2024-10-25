FROM tomcat:9.0-jdk11

ENV CATALINA_HOME=/usr/local/tomcat
ENV DEPLOY_DIR=$CATALINA_HOME/webapps/

WORKDIR /app
COPY app.war .

EXPOSE 9091

# Ejecutar Tomcat
CMD ["catalina.sh", "run"]
