#!/bin/bash

# Run image
docker run -it --rm -v `pwd`/proxies.txt:/proxies.txt soxy