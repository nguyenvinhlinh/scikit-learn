#!/bin/sh

set -e

# install dependencies
apk add --no-cache gcc musl-dev
apk add --no-cache gfortran build-base wget libpng-dev openblas-dev

# build
pip wheel --extra-index-url https://alpine-wheels.github.io/index --no-deps --requirement requirements.txt
