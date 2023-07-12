docker build -t chunx/add add
docker container create --name add chunx/add
docker container start add