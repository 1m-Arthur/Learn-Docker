docker build -t chunx/expose expose
docker image inspect chunx/expose
docker container create --name expose -p 8080:8080 chunx/expose
docker container start expose
curl localhost:8080