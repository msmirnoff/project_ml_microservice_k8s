#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="igms/ml-app"
tag="v1"
built_image="ml-app:dev"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=igms
docker tag "$built_image" "$dockerpath":"$tag"

# Step 3:
# Push image to a docker repository
docker push "$dockerpath":"$tag"
