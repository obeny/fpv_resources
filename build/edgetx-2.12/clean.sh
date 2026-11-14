#!/bin/bash

#cleanup
git reset --hard
git clean -xfd

git submodule foreach --recursive git reset --hard
git submodule foreach --recursive git clean -xfd
git submodule foreach --recursive git submodule init
git submodule update --recursive

#remove build
rm -rf build

git clean-all
