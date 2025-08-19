# Use the official File Browser Docker image
FROM filebrowser/filebrowser:latest

# Set environment variables
ENV FILEBROWSER_DATABASE=/database/filebrowser.db \
    FILEBROWSER_ROOT=/srv \
    FILEBROWSER_PORT=8080 \
    FILEBROWSER_NO_AUTH=true

# Expose the port
EXPOSE 8080

# Start File Browser
CMD ["/filebrowser", "server"]
