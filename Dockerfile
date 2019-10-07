FROM maven:3-jdk-8-slim

ARG CLI_VERSION=1.16.254

# Update software repository
RUN apt-get update

# Install Python 3, PIP, and JQ
RUN apt-get install -y python3-pip jq

# Install AWS CLI
RUN pip3 install --no-cache-dir awscli==$CLI_VERSION
RUN aws --version

# Maven version
RUN mvn -version
