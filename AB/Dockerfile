FROM malkab/mapnik:v3_0_12
MAINTAINER Juan Pedro Perez "jpperezalcantara@us.es"


# Load assets
ADD packages/node-v8.4.0.tar.gz /src/


# Compilation
WORKDIR /src/node-v8.4.0
RUN apt-get update && apt-get upgrade -y && ./configure && make && make install && cd / && npm install mapnik && rm -Rf /src

WORKDIR /


# Run
ENTRYPOINT ["/bin/bash"]
