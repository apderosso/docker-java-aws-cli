FROM maven:3-jdk-11-slim

ARG CLI_VERSION=1.18.33

# Add Node repository, this also runs apt-get update
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -

# Install Python 3, PIP, JQ, Node, zip, and unzip
RUN apt-get install -y python3-pip jq nodejs zip unzip

# Install webpack
RUN npm install --save-dev webpack

# Install AWS CLI
RUN pip3 install --no-cache-dir awscli==$CLI_VERSION
RUN aws --version

# Maven version
RUN mvn -version
