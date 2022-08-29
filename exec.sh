#!/usr/bin/bash

# We use this script to start and enter a container base on user input.

# Creating a variable call NAME.
NAME="Enter container name"

# Show docke=r version
echo "Your docker version is"
docker -v

# Hold the terminal for few seconds
sleep 3


# Ask container name from the user
# echo $NAME
read -p "$NAME --> " container_name

# Display the name and status of the container
echo "The name and status of the container: "
docker ps -a | grep $container_name 

# Hold the terminal for few seconds
sleep 5


# Start my container
docker start $container_name

# Hold the terminal for few seconds
sleep 3

# Enter my container
docker exec -it $container_name  bash