FROM nvidia/opengl:1.2-glvnd-devel-ubuntu18.04 AS build
LABEL maintainer="zjdx1998@gmail.com"
# RUN apk update && apk add --upgrade g++ sdl2-dev sdl2_ttf-dev sdl2_image-dev sdl2_mixer-dev
RUN apt-get update -y && apt-get install -y g++ libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libsdl2-mixer-dev
COPY . /home/app/
WORKDIR /home/app
ENV DISPLAY=host.docker.internal:0
ENV QMLSCENE_DEVICE=softwarecontext
ENV LIBGL_ALWAYS_INDIRECT=y
RUN g++ -std=c++17 src/*.cpp -lSDL2 -lSDL2_ttf -lSDL2_image -lSDL2_mixer -o prog
ENTRYPOINT ["./prog"]
