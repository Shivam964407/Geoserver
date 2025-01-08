# Use the official GeoServer Docker image as the base image
FROM docker.osgeo.org/geoserver:2.26.0

# Set the GeoServer data directory environment variable
ENV GEOSERVER_DATA_DIR=/opt/geoserver_data

# Copy the local data directory into the container
# Use the relative path if the data_dir is in the same directory as the Dockerfile
COPY /e/OpenLayersFrontend/Geoserver/data_dir /opt/geoserver_data

# Expose port 8080 for GeoServer
EXPOSE 8080

# Command to start GeoServer
CMD ["catalina.sh", "run"]
