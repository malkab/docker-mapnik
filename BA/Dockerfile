FROM malkab/mapnik:v3_0_12
MAINTAINER Juan Pedro Perez "jpperezalcantara@us.es"


# Variables
ENV PYTHONPATH /usr/local/lib/python2.7/dist-packages/mapnik-0.1-py2.7-linux-x86_64.egg/mapnik


# Load assets
ADD packages/python-mapnik-3.0.x.tar.bz2 /src/


# Compilation
WORKDIR /src/python-mapnik-3.0.x
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      build-essential \
      python-dev \
      python-pip \
      libboost-python-dev \
      python-cairo-dev && \
    PYCAIRO=true python setup.py install && \
    cd / && rm -Rf /src
WORKDIR /


# Run
ENTRYPOINT ["/bin/bash"]
