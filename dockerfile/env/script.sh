docker build -t chunx/env env
docker image inspect chunx/env
docker container create --name env --env APP_PORT=8090 -p 8090:8090 chunx/env
docker container start env
curl localhost:8090