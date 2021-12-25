FROM python:3.9-slim

WORKDIR /app

ARG TERRAFORM_VERSION=1.1.2

RUN apt update && \
    apt install -y groff wget unzip && \
    pip install -U awscli && \
    wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /bin

CMD /bin/bash
