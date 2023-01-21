:: make sure you have installed XMing for windows, and run this script in administrator mode.
xming -ac
git clone git@github.com:Spring23BuildingGameEngines/monorepo-zjdx1998.git
cd monorepo-zjdx1998/Assignment1_cpp/part2
curl -o Dockerfile https://raw.githubusercontent.com/zjdx1998/sdl2docker/main/Dockerfile
docker build -t sdl_project .
docker run -it --privileged sdl_project "$@"