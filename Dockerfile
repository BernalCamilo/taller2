# Usar una imagen base de Tomcat
FROM tomcat:9.0-jdk11

# Definir variable de entorno para CATALINA_HOME
ENV CATALINA_HOME=/usr/local/tomcat

# Definir el directorio donde Tomcat buscará archivos .war
ENV DEPLOY_DIR=$CATALINA_HOME/webapps/

# Copiar el archivo .war al directorio webapps de Tomcat
COPY saamfi-rest/target/saamfiapi.war $DEPLOY_DIR

# Exponer el puerto 9092
EXPOSE 9091

# Ejecutar Tomcat
CMD ["catalina.sh", "run"]
