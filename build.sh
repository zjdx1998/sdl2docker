#!/bin/bash

# make sure you hava installed xQuartz for mac or XServer for linux.
xhost +
git clone git@github.com:Spring23BuildingGameEngines/monorepo-zjdx1998.git
cd monorepo-zjdx1998/Assignment1_cpp/part2
curl -o Dockerfile https://raw.githubusercontent.com/zjdx1998/sdl2docker/main/Dockerfile
sudo docker build -t sdl_project .
docker run -it --privileged sdl_project "$@"