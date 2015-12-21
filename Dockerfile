# Set the base image to ubuntu 14.04
FROM python

# File Author / Maintainer
MAINTAINER Chance Hohensee

# Update the repository sources
RUN apt-get update

# Install scipy stack for python 3
RUN apt-get install python3-numpy python3-scipy python3-matplotlib ipython3 ipython3-notebook python3-pandas python3-sympy python3-nose

# Install mesa
RUN pip install mesa
