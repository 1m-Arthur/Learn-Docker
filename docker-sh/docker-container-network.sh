docker network create --driver bridge mongonetwork
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=arthur --env MONGO_INITDB_ROOT_PASSWORD=arthurpws mongo:latest
docker image pull mongo-express:latest
#docker container create --name mongodbexpress --network  mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL:"mongodb://arthur:arthurpws@mongodb:27017/" mongo-express:latest
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 -e ME_CONFIG_OPTIONS_EDITORTHEME="ambiance" -e ME_CONFIG_MONGODB_SERVER="mongodb" -e ME_CONFIG_MONGODB_ADMINUSERNAME="arthur" -e ME_CONFIG_MONGODB_ADMINPASSWORD="arthurpws" -e ME_CONFIG_MONGODB_URL="mongodb://arthur:arthurpws@mongodb:27017/" mongo-express
docker container start mongodb
docker container start mongodbexpress
docker container disconnect mongonetwork mongodb
docker container connect mongonetwork mongodb