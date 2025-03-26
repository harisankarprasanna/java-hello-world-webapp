# Use official Tomcat base image
FROM tomcat:9.0

# Copy the WAR file from target directory to Tomcat webapps folder
COPY target/*.war /usr/local/tomcat/webapps/myapp.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

