#!/bin/bash

curl -o Dockerfile https://raw.githubusercontent.com/zjdx1998/sdl2docker/main/Dockerfile
sudo docker build -t sdl_project .
docker run -it --privileged sdl_project "$@"