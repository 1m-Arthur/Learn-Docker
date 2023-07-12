docker container create --name nginxbackup --mount "type=bind,source=/c/Users/IHC/Documents/learn-docker,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest
docker container start nginxbackup
docker container exec -i -t nginxbackup /bin/bash
tar cvf /backup/backup.tar.gz /data
docker stop nginxbackup
docker container rm nginxbackup
docker container start mongovolume

#use docker run
docker pull ubuntu
docker container run --rm --name ubuntubackup --mount "type=bind,source=/c/Users/IHC/Documents/learn-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data