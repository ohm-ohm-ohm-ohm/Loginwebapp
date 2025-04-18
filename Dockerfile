FROM tomcat:9.0-jdk17

# Remove the default web applications in Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file from your target directory to the webapps folder in Tomcat
COPY target/LoginWebApp.war /usr/local/tomcat/webapps/ROOT.war
