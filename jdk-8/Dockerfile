FROM maven:3-jdk-8-slim

ARG CLI_VERSION=1.18.35

# Add Node repository, this also runs apt-get update
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -

# Install Python 3, PIP, JQ, Node, zip, unzip, and ruby
RUN apt-get install -y python3-pip jq nodejs zip unzip ruby-full

# Install webpack
RUN npm install --save-dev webpack

# Install compass
RUN gem update --system
RUN gem install compass

# Install AWS CLI
RUN pip3 install --no-cache-dir awscli==$CLI_VERSION
RUN aws --version

# Maven version
RUN mvn -version
