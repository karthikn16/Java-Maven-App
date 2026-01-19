# Use official Tomcat 10 with JDK 17
FROM tomcat:10-jdk17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat
COPY target/myapp.war /usr/local/tomcat/webapps/myapp.war

# Expose Tomcat port
EXPOSE 8090

# Start Tomcat
CMD ["catalina.sh", "run"]

