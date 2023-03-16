#! /bin/bash

#Perintah untuk build Docker image dari berkas Dockerfile yang disediakan dengan nama <username-docker>/karsajobs:latest
docker build -t ghcr.io/tooopu/a433-microservices/karsajobs:latest .

#We recommend saving your token as an environment variable. Using format ghp_ for Personal Access Tokens and export to CR_PAT then using it to login ke github packages
echo $CR_PAT | docker login ghcr.io --username tooopu --password-stdin

#Mengunggah image ke Github Packages
docker push ghcr.io/tooopu/a433-microservices/karsajobs:latest