#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="igms/ml-app"
container="ml-app"
tag="v1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run "$container" --image="$dockerpath":"$tag" --port=80 --labels app="$container"

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward "$container" 8000:80

