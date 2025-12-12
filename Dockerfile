FROM n8nio/n8n:latest

# On passe en root pour installer des paquets
USER root

# Installer ffmpeg avec apk (Alpine Linux)
RUN apk update && apk add --no-cache ffmpeg

# On revient à l'utilisateur 'node' utilisé par n8n
USER node
