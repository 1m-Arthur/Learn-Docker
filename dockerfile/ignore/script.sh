docker build -t chunx/ignore ignore
docker container create --name ignore chunx/ignore
docker container start ignore