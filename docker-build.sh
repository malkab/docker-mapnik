#!/bin/bash

docker build -t=malkab/mapnik:v3_0_12 .
docker tag malkab/mapnik:v3_0_12 malkab/mapnik:latest
