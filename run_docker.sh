#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

name="ml-app"
tag="dev"
dockerhost="192.168.99.100"

# Step 1:
# Build image and add a descriptive tag
docker build --tag "$name":"$tag" .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run --interactive --tty --publish "$dockerhost":8000:80/tcp "$name":"$tag"
