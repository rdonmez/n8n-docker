FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install ffmpeg using apk (Alpine package manager)
RUN apk add --no-cache ffmpeg

# Switch back to the 'node' user for security
USER node