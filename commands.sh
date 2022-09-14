// pull the nginx image
docker pull nginx
// run the container
docker run -it --name=nginxContainer1 -d -p 8081:80 nginx

// list the running containers
docker ps
// exec command
docker exec -it nginxContainer1 bash
// cd to welcome page and edit it
cd /usr/share/nginx/html
echo "I changed this file while running the conatiner" > index.html

docker stop nginxContainer1

docker run -it --name=nginxContainer2 -d -p 8081:80 nginx


docker stop nginxContainer2


docker volume create nginxvolume
docker volume ls

docker volume inspect nginxvolume

docker run -d --name=nginxContainer1 --mount source=nginxvolume,destination=/usr/share/nginx/html -p 8081:80 nginx

// list the running containers
docker ps
// exec command
docker exec -it nginxContainer1 bash
// cd to welcome page and edit it
cd /usr/share/nginx/html
echo "I changed this file while running the conatiner" > index.html


docker stop nginx

docker run -d --name=nginxContainer2 --mount source=nginxvolume,destination=/usr/share/nginx/html -p 8081:80 nginx


