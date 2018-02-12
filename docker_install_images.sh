#!/bin/bash
echo "==========================="
echo " "
echo "Installing docker images..."
echo " "
echo "==========================="
IMAGE_STRING="nginx, redis, centos, debian, ubuntu, mariadb, mongo, cassandra"
IMAGES_ARRAY=(${IMAGE_STRING//,/ })

for i in ${!IMAGES_ARRAY[@]}; do
	echo "Installing ${IMAGES_ARRAY[$i]}."
	docker pull ${IMAGES_ARRAY[$i]}
	echo "Installed ${IMAGES_ARRAY[$i]}."
done
