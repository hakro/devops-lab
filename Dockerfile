FROM python:3.7-alpine

WORKDIR /home

ARG TERRAFORM_VERSION=0.12.8 

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /bin && \

    # Install AWS CLI
    pip install -U awscli

CMD /bin/sh
