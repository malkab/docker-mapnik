FROM ubuntu:16.04
MAINTAINER Juan Pedro Perez "jpperezalcantara@us.es"


# Load assets
ADD packages/mapnik-v3.0.12.tar.bz2 /src/


# Compilation
WORKDIR /src/mapnik-v3.0.12
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
      clang \
      build-essential \
      python-dev \
      libxml2 \
      libxml2-dev \
      libfreetype6 \
      libfreetype6-dev \
      zlib1g-dev \
      libicu-dev \
      libharfbuzz-dev \
      libboost-dev \
      libboost-system-dev \
      libboost-filesystem-dev \
      libboost-regex-dev \
      libpq-dev \
      libjpeg-dev \
      libproj-dev \
      libtiff-dev \
      libpng-dev \
      libgdal1-dev \
      libboost-thread-dev \
      libcairo2 \
      python-gdal \
      libcairomm-1.0-1v5 \
      libcairomm-1.0-dev \
      python-cairo-dev \
      libcairo2-dev \
      libjson-c-dev \
      libsqlite3-dev \
      ttf-unifont \
      ttf-dejavu \
      ttf-dejavu-core \
      ttf-dejavu-extra \
      git \
      python-nose \
      libboost-program-options-dev \
      libboost-python-dev && \
    ./configure && \
    make && \
    make install


# Clean-up
RUN cd / ; rm -Rf /src
WORKDIR /


# Run
ENTRYPOINT ["/bin/bash"]
