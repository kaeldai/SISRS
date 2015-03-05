#!/bin/bash

echo "Copying Data"
rm -rf /home/kdai1/Docker/SISRS/data
cp -r /home/kdai1/Data/SISRS/test_data /home/kdai1/Docker/SISRS/data

echo "Running SISRS on Docker"
docker run -v /home/kdai1/Docker/SISRS/data:/tmp/data sisrs /tmp/SISRS/bin/sisrs -a /tmp/data -p 3
