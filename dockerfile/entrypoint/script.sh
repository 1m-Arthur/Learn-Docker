docker build -t chunx/entrypoint entrypoint
docker container create --name entrypoint -p 8080:8080 chunx/entrypoint
docker container start entrypoint