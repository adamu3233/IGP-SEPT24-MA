# Use an official Tomcat image with JDK 11
FROM tomcat

# Remove default webapps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into the Tomcat webapps directory
COPY ABCtechnologies-1.0.war /usr/local/tomcat/webapps/

# Expose Tomcat port (changed to 8080)
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
