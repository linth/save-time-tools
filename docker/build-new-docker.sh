#!bin/bash
# set up the image and container name.
imageName="docker/image2"
containerName="shopping2"

# remove image and container.
echo "Removing image and container..."
docker stop $containerName
docker rm $containerName
docker rmi $imageName

# complie your spring-boot project to jar file.
echo "complie the spring-boot project."
./mvnw clean package

# build the image.
echo "build the image."
docker build -t docker/image2 .

# run the container by docker image.
echo "build the container by docker image."
docker run -d --name shopping2 -p 8080:8080 docker/image2

# start your docker service.
echo "start the container."
docker start shopping2