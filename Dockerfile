# Set the base image to latest python
FROM python

# File Author / Maintainer
MAINTAINER Chance Hohensee

# Install mesa
RUN pip3 install mesa

# Add matplotlib
RUN apt-get update -qq && apt-get -y install python3-matplotlib