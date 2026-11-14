#!/bin/bash

python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt

mkdir -p build
cd build

../cmake_cmd

set -e
make configure
make -j`nproc` firmware
