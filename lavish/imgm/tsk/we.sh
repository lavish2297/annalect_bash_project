#!/bin/bash
read -p "enter the name of the image you want to bulid from dockerfile" d
echo "FROM $d" >> dockerfile
read -p "enter name of custom base image" base
docker build -t $base .
truncate -s 0 dockerfile
for i in {1..2}
do
	read -p "enter the name of the conatiner" c
	docker run -dt --name $c $d
        docker exec --user root $c apt-get update -y
	read -p "enetr the name of the package you want to install" p
    	docker exec --user root $c apt-get install $p -y
	read -p "enter the name of the image made from container" i
        docker commit $c $i
	read -p "enter the name of the new conatiner" n
	docker run -dt --name $n $i
	docker exec --user root $n dd if=/dev/zero of=/root/file.txt bs=1M count=500
	read -p "enter the name of new image" ni
	docker commit $n $ni
	docker history $ni >> his.txt
done
