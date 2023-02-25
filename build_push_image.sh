#! /bin/bash

# Arahkan ke folder proyek-pertama
cd /opt/Downloads/a433-microservices

# Membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/tooopu/a433-microservices/item-app:v1

#We recommend saving your token as an environment variable. Using format ghp_ for Personal Access Tokens and export to CR_PAT then using it to login ke github packages
echo $CR_PAT | docker login ghcr.io --username tooopu --password-stdin

#Mengunggah image ke Github Packages
docker push ghcr.io/tooopu/a433-microservices/item-app:v1