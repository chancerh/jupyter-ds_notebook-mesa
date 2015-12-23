# Use the jupyter datascience notebook image and add Mesa
FROM jupyter/datascience-notebook

# File Author / Maintainer
MAINTAINER Chance Hohensee

# Install mesa
RUN pip install mesa

# Install argeparse
