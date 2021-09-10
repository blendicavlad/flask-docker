#!/bin/bash
imageName=data-cleaning-app_web:latest
containerName=data-cleaning-app-v0.1

#echo Delete old container...
#docker rm -f $containerName

echo Delete old image...
docker image rm -f $imageName

#echo Build new image
#docker build -t $imageName -f Dockerfile  .

echo Rebuild compose container container...
docker-compose up --force-recreate