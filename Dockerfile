FROM tomcat:9.0-jdk17
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/ROOT.war
