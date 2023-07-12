docker build -t chunx/user user
docker container create --name user -p 8080:8080 chunx/user
docker container start user
docker container exec -i -t user /bin/sh
# whoami