#!/bin/bash
i=1

while [ $i -lt  5 ]
do
	read -p "enter the name of i conatiner:" con
	read -p "enter the type of network:" net
        docker network create --driver bridge $net
	docker run -dt --name $con --network $net ubuntu    	
        i=`expr $i + 1` 
done
read -p "enter the the container u wnt to run" crun
docker exec -ti $crunm apt-get update && apt-get install -y net-tools && apt-get install iputils-ping
read -p "enter the name you want to ping:" h
docker exec -ti $crun ping $h
