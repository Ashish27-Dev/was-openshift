# Use the WebSphere Liberty base image with the Web Profile 8 feature set
FROM icr.io/appcafe/websphere-liberty:webProfile8

# Environment variables pointing to the WebSphere Liberty installation and configuration directories
ENV INSTALL_DIR=/opt/ibm/wlp
ENV CONFIG_DIR=${INSTALL_DIR}/usr/servers/defaultServer

# (Optional) Set the working directory - this is where the following commands will run
# WORKDIR ${CONFIG_DIR}

# Copy the server.xml to the default server configuration directory
COPY server.xml ${CONFIG_DIR}/

# Copy the WAR file to the applications directory within the server configuration
COPY sample-app.war ${CONFIG_DIR}/apps/

# Expose the default HTTP and HTTPS ports
EXPOSE 9080 9443

# Command to start the WebSphere Liberty server
CMD ["sh", "-c", "exec ${INSTALL_DIR}/bin/server run defaultServer"]
