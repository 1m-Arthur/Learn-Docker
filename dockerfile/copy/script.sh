docker build -t chunx/copy copy
docker container create --name copy chunx/copy
docker container start copy