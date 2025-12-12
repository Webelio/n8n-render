FROM n8nio/n8n:latest

# Passer en root pour installer des paquets
USER root

# Installer ffmpeg (l'image n8n officielle est basée sur Debian)
RUN apt-get update \
    && apt-get install -y ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Revenir à l'utilisateur utilisé par n8n
USER node
