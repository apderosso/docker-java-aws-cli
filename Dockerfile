FROM maven:3-jdk-8-slim

# Update software repository
RUN apt-get update

# Install Python 3 and PIP
RUN apt-get install -y python3-pip

# Install AWS CLI
RUN pip3 install awscli
RUN aws --version

# Maven version
RUN mvn -version
