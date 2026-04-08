FROM n8nio/n8n:2.14.2

# Switch to root to install packages
USER root


# Install ffmpeg using apk (Alpine package manager)
RUN wget -q https://dl-cdn.alpinelinux.org/alpine/v3.22/main/x86_64/apk-tools-2.14.8-r0.apk && \
    tar -xzf apk-tools-2.14.8-r0.apk -C / && \
    rm apk-tools-2.14.8-r0.apk && apk add --no-cache ffmpeg

# Switch back to the 'node' user for security
USER node