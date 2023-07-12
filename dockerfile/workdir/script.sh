docker build -t chunx/workdir workdir
docker container create --name workdir -p 8080:8080 chunx/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh