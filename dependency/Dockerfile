FROM ubuntu:21.10

RUN mkdir /project
COPY . /project

RUN apt-get update && apt-get install -y \
    wget \
    && rm -rf /var/lib/apt/lists/* 

RUN /project/install-dependencies.sh /project/dependencies.list /project


