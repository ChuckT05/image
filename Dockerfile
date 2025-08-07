# Dockerfile
# FROM python:3.11-slim
FROM docker.io/library/python:3.11-slim

LABEL maintainer="you@example.com"
WORKDIR /app

# Copy your website into the image
COPY index.html .

# Expose port 8000 to the host
EXPOSE 8000

# Start a basic HTTP server using Python
CMD ["python", "-m", "http.server", "8000"]
