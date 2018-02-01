FROM ubuntu:16.04
MAINTAINER Avijit Samanta

# Update and install s/w
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk git wget unzip curl 

# RUN apt-get --yes --force-yes install
RUN apt-get --yes --force-yes install -y python-pip python-dev build-essential 
RUN pip install --upgrade pip 
RUN pip install --upgrade virtualenv 

#Upgrade pip, install Git & VNC 	
RUN pip install --upgrade pip \
        && apt-get update \
	&& apt-get install -y git x11vnc


