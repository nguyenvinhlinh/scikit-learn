#!/bin/sh

set -e

# install dependencies
apk add --no-cache gcc musl-dev
apk add gfortran build-base wget libpng-dev openblas-dev

# build
pip wheel --no-deps --requirement requirements.txt
