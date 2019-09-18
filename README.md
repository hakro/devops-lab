## Description

Docker image with the necessary DevOps tools to Rock the World


## Tools so far

* Terraform
* AWS CLI

## Run

Run this command from withing your **host working directory** to mount it correctly as a volume on the docker container.

`docker run -v $PWD:/home --name devops-lab -it devops-lab`
