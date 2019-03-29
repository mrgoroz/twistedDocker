###To build the image:###

docker build --rm -f Dockerfile -t twistedcont:latest .

###kill all running containers:###

docker kill $(docker ps -q)

###delete all stopped containers:###

docker rm $(docker ps -a -q)

###delete all images:###

docker rmi $(docker images -q)