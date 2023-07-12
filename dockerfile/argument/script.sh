docker build -t chunx/argument argument --build-arg app=testapp
docker container create --name argument -p 8080:8080 chunx/argument
docker container start argument
docker container exec -i -t argument /bin/sh