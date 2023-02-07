#!/bin/bash
read -p "enter the name of the custom network:" n
docker network create --driver bridge  $n
for i in {1..6};
do
	read -p "enter the name of the container $i " con
	docker run -dt --name $con$i --network $n ubuntu
done
read -p "enter the name of the con container" c
docker run -dt --name $a --network $n --link 1$con:2$con --link 2$con:3$con --link 3$con:4$con --link 4$con:5$con --link 5$con:6$con --link 6$con:1$con busybox sh
