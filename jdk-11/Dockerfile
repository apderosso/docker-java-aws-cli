FROM maven:3-jdk-11-slim

ARG CLI_VERSION=1.18.23

# Update software repository
RUN apt-get update

# Install Python 3, PIP, JQ, Node, zip, and unzip
RUN apt-get install -y python3-pip jq nodejs zip unzip

# Install AWS CLI
RUN pip3 install --no-cache-dir awscli==$CLI_VERSION
RUN aws --version

# Maven version
RUN mvn -version
