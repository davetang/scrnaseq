#!/usr/bin/env bash

set -euo pipefail

VER=0.1.0

docker build -t davetang/scrnaseq:${VER} .

cat <<EOF
Push to Docker Hub

docker login
docker push davetang/scrnaseq:${VER}

EOF
