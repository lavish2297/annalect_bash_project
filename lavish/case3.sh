#!/bin/bash docker pull ubuntu
for i in 1 2
do
        read -p "Enter the name of the  container you want to start:" con
        docker container run -dt --name $con ubuntu
        for i in 1
                do
                        docker exec -it $con /bin/bash
                done
        read -p "Enter the image name you want to save with:" name
        docker container commit $con modified$name
        read -p "Enter the name of container to start again:" con1
        docker container run -dt --name $con1 modified$name
        echo "FROM ubuntu" > /home/ec2-user/docker_container_activity_case/dockerfile
        echo "RUN dd if=/dev/zero of=/root/file.txt bs=1M count=500" > /home/ec2-user/docker_container_activity_case/dockerfile
        echo "CMD ["bash"]" > /home/ec2-user/docker_container_activity_case/dockerfile
        read -p "Enter the name of container image you want to save again:" name1
        docker container commit $con1 modified$name1
        docker history modified$name1 >> $name1.textfile.txt
done
