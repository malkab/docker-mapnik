FROM ubuntu:latest

MAINTAINER Juan Pedro Perez "jpperezalcantara@us.es"


# Variables

ENV PYTHONPATH /usr/local/lib/python2.7/dist-packages/mapnik-0.1-py2.7-linux-x86_64.egg/mapnik


# Load assets
ADD packages/python-mapnik-3.0.x.tar.bz2 /src/


# Compilation
WORKDIR /src/python-mapnik-3.0.x
RUN apt-get update && apt-get install -y libboost-python-dev  python-cairo-dev && PYCAIRO=true python setup.py install


# Clean-up
RUN cd / ; rm -Rf /src
WORKDIR /


# Run
ENTRYPOINT ["/bin/bash"]
