#!bin/bash
# Reference:
# - https://spring.io/guides/topicals/spring-boot-docker/

# set up the image and container name.
imageName=$1
containerName=$2
port=$3

if [[ $imageName != "" ]]; then
    echo "image name has already been set."
else
    # set up the image name.
    imageName="docker/image2"
fi

if [[ $containerName != "" ]]; then
    echo "container name has already been set."
else
    # set up the container name.
    containerName="shopping2"
fi

if [[ $port != "" ]]; then
    echo "port has already been set."
else
    # set up the port.
    port="8080"
fi

task() {
    # complie your spring-boot project to jar file.
    echo "complie the spring-boot project."
    ./mvnw clean package

    # build the image.
    echo "build the image."
    docker build -t $imageName .

    # run the container by docker image.
    echo "build the container by docker image."
    docker run -d --name $containerName -p $port:$port $imageName

    # start your docker service.
    echo "start the container."
    docker start $containerName
}

main() {
    if [[ $(docker ps -f name=$containerName) != "" ]]; then
        # remove container.
        echo "Removing container..."
        docker stop $containerName
        docker rm $containerName
    fi

    if [[ $(docker images -q $imageName) != "" ]]; then
        # remove image.
        echo "Removing image..."
        docker rmi $imageName
    fi

    task
}

main