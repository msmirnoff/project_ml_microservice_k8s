# Build Status:
[![msmirnoff](https://circleci.com/gh/msmirnoff/project_ml_microservice_k8s.svg?style=svg)](https://circleci.com/gh/msmirnoff/project_ml_microservice_k8s)

# Project Overview

This project is a web API frontend to a ML model for house price prediction.
The web app is a Python Flask app, with the code in `app.py` that expects an API call via HTTP on port 80.

# Usage

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

## Running

### Running via docker:

    ./run_docker.sh

*Note: Minikube or other Docker-in-VM over TCP (e.g. Docker Toolbox) is the assumed Docker daemon.
Amend $docker_host to localhost if this is not the case in your environment.

The app will be avaiable on port 8000 of the Docker host.

### Running via Kubernetes:

    ./run_kubernetes.sh

On first run, the prompt will return with "error: unable to forward port because pod is not running. Current status=Pending"

Wait about 30-60 seconds for the pod to start and re-run:

    ./run_kubernetes.sh

The app will be avaiable on port 8000 of localhost.

### Running Standalone web app

Standalone web app, runs on port 80:

    python app.py

### Querying

Making API calls can be done via `curl`, a premade script can be used:

    ./make_prediction.sh

## Repository file information

`app.py` - main application

`Dockerfile` - Docker image build directives

`make_prediction.sh` - a script to test the API

`Makefile`- setup and test commands

`README.md` - readme

`requirements.txt` - web application dependencies

`run_docker.sh` - a script to build and tag the Docker image and run the container

`run_kubernete.sh` - a script to run the container in Kubernetes and make it locally accessible

`upload_docker.sh` - a script to upload the image to DockerHub

`.circleci` - CI testing setup

`model_data` - data for the ML model

`output_txt_files` - output from running the app in Docker and Kubernetes
