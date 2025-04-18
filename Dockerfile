# Use official Tomcat with Java 17 base image
FROM tomcat:9.0-jdk17

# Remove default Tomcat apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file to Tomcat webapps directory
COPY target/Loginwebapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
