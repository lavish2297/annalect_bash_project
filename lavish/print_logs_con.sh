#!bin/bash
read -p "enter image name you want to pull:" i
 
 docker pull $i

read -p "enter image to be a container:" con
read -p "enter port:" p
read -p "enter the name of the container:" name
docker run -dt --name $name -p $p $con
echo "conatiner started running"
read -p "name of container logs you need to store" logs
touch d_log.txt
docker container $logs>>d_log.txt
echo "completed"

