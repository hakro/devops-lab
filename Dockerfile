FROM python:3.7-alpine

WORKDIR /home

RUN wget https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_linux_amd64.zip && \
    unzip terraform_0.12.7_linux_amd64.zip && \
    rm terraform_0.12.7_linux_amd64.zip && \
    mv terraform /bin && \

    # Install AWS CLI
    pip install -U awscli

CMD /bin/sh
