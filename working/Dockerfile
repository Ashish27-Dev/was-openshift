# Use the WebSphere Liberty image
FROM websphere-liberty:latest

# Copy the WAR file into the Liberty dropins directory
COPY target/my-web-app-1.0-SNAPSHOT.war /opt/ibm/wlp/usr/servers/defaultServer/dropins/

# Expose port 9080
EXPOSE 9080

# Start the server
CMD ["/opt/ibm/wlp/bin/server", "run", "defaultServer"]
