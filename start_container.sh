#!/usr/bin/env bash

set -euo pipefail

VER=0.1.0
IMAGE=davetang/scrnaseq:${VER}
CONTAINER=rstudio_server_scrnaseq_${VER}
PORT=7878

docker run \
   --name ${CONTAINER} \
   -d \
   --rm \
   -p ${PORT}:8787 \
   -v ${HOME}/github/:/home/rstudio/work \
   -v ${HOME}/gitlab/:/home/rstudio/gitlab \
   -v ${HOME}/analysis/:/analysis \
   -e PASSWORD=password \
   -e USERID=$(id -u) \
   -e GROUPID=$(id -g) \
   ${IMAGE}

>&2 echo ${CONTAINER} listening on port ${PORT}
exit 0
