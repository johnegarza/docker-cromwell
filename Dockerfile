FROM ubuntu:xenial
MAINTAINER John Garza <johnegarza@wustl.edu>

LABEL \
    description="Packages necessary to run cromwell on LSF, and a few utility tools"

RUN apt-get update -y && apt-get install -y \
    apt-utils \
    default-jdk \
    git \
    libnss-sss \
    python-pip \
    vim

RUN pip install --upgrade pip
RUN pip install cwltool
