FROM tomcat:9.0-jdk11

ENV CATALINA_HOME=/usr/local/tomcat 
ENV DEPLOY_DIR=$CATALINA_HOME/webapps

# Configurar Tomcat para usar puerto 8081
RUN sed -i 's/port="9000"/port="9091"/g' ${CATALINA_HOME}/conf/server.xml

WORKDIR /app

COPY ./app.war .
RUN cp /app/app.war $DEPLOY_DIR

EXPOSE 9091

CMD ["catalina.sh", "run"]
