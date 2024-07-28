# Use the official MinIO image from Docker Hub
FROM minio/minio

# Set environment variables for MinIO
ENV MINIO_ROOT_USER=yourusername
ENV MINIO_ROOT_PASSWORD=yourpassword

# Expose ports for MinIO (9000 for API, 9001 for console)
EXPOSE 9000
EXPOSE 9001

# Define a mount point for the volume
VOLUME /data

# Command to start MinIO server with specified data directory and console address
CMD ["server", "/data", "--console-address", ":9001"]
