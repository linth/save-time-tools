#!bin/bash
# set up the image and container name.
imageName="docker/image2"
containerName="shopping2"
port="8080"

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