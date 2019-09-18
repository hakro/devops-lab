## Description

Docker image with the necessary DevOps tools to Rock the World

## Docker Build Status
[![Docker badge](https://img.shields.io/docker/cloud/build/hakimr/devops-lab)](https://cloud.docker.com/u/hakimr/repository/docker/hakimr/devops-lab)


## Tools so far

* Terraform
* AWS CLI

## Run

Run this command from withing your **host working directory** to mount it correctly as a volume on the docker container.

`docker run -v $PWD:/home --name devops-lab -it hakimr/devops-lab`
