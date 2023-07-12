docker build -t chunx/volume volume
docker image inspect chunx/volume
docker container create --name volume -p 8080:8080 chunx/volume
docker container start volume
docker container logs volume