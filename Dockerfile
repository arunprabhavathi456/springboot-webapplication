FROM tomcat
USER root
COPY  mavewebappdemo-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]
