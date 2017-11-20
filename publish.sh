#!/bin/sh
set -euv

TAG=gtagliabue4c/cwl:$1

docker build -t $TAG .
docker push $TAG
