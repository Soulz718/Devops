
###Docker

#Rule

FIle name should be start with "D" and Dockerfile

#To Build image
docker build -t soul_image .

docker run soul_image

docker images #To show images

docker start soul_container


docker run -it soul_image   
###     i- Interactive , t-TTY

docker stop soul_container

docker start soul_container

#Running commands in container
docker exec -it soul_container node
docker exec -it soul_container /bin/bash    # node and /bin/bash - file
ls
cd /usr/local/bin/bash
ls 
You can find the node file now

#Tag container name
docker run --name my_soul_image node

#rename the container name
docker rename my_soul_image gill_image

docker ps  #To show running container

docker ps -a     #To show all container
docker prune     #To delete exited/stop container 

# Project work

docker build -t virat_image .

#Image pushing into DockerHub and create a repository

docker tag virat_image soul718/my_virat_repo:latest
docker push my_virat_repo:latest

#Pulling and run DockerHub image
docker pull my_virat_repo:latest

docker run -it virat_image

docker ps -a

##########################