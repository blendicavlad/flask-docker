#!/bin/bash
imageName=data-cleaning-app:version0.1
containerName=data-cleaning-app-v0.1

echo Delete old container...
docker rm -f $containerName
docker image rm -f $imageName

echo Build new image
docker build -t $imageName -f Dockerfile  .

echo Run new container...
docker run -d -p 5000:5000 --name $containerName $imageName