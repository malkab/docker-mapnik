FROM ubuntu:latest

MAINTAINER Juan Pedro Perez "jpperezalcantara@us.es"


# Variables

ENV PYTHONPATH /usr/local/lib/python2.7/dist-packages/mapnik-0.1-py2.7-linux-x86_64.egg/mapnik


# Update and apt-get basic packages

RUN apt-get update && apt-get install -y build-essential python zlib1g-dev libicu-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-regex-dev libfreetype6-dev libharfbuzz-dev libpq-dev libjpeg-dev libproj-dev libtiff-dev libgdal-dev libcairo2-dev libjson-c-dev libboost-program-options-dev python-pip ipython libboost-python-dev libboost-thread-dev python-cairo-dev


# Load assets

ADD packages/mapnik-v3.0.12.tar.bz2 /usr/local/src/
ADD packages/python-mapnik-3.0.x.tar.bz2 /usr/local/src/


# Compilation

WORKDIR /usr/local/src/mapnik-v3.0.12
RUN ./configure
RUN make
RUN make install

WORKDIR /usr/local/src/python-mapnik-3.0.x
RUN PYCAIRO=true python setup.py install


# Clean-up

RUN cd / ; rm -Rf /usr/local/src/mapnik-v3.0.12
WORKDIR /


# Run

ENTRYPOINT ["/bin/bash"]
