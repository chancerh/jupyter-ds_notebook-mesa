# Use the jupyter datascience notebook image and add Mesa
FROM jupyter/datascience-notebook

RUN apt-get update -y
RUN apt-get upgrade -y

# File Author / Maintainer
MAINTAINER Chance Hohensee

# Install mesa
RUN pip install mesa
RUN pip install jedi
RUN pip install flake8
RUN pip install importmagic
RUN pip install autopep8
RUN pip install yapf

# Setup emacs
RUN apt-get -y install git
RUN apt-get -y install emacs
RUN apt-get -y install ess

# Add emacs.d directory from github
RUN git clone https://github.com/chancerh/emacs-setup /home/jovyan/.emacs.d

# Run emacs as a deamon to finish any elpy configuration (needed?)
RUN emacs --daemon
# ENV EDITOR="emacsclient -t"
# ENV VISUAL="emacsclient -c -a emacs"
# ENV alias e="emacsclient -t"
# ENV alias ec="emacsclient"
