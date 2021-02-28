#/bin/sh
docker build -t multi_pet .
docker-compose up -d
#docker rmi $(docker images -f dangling=true -q)
