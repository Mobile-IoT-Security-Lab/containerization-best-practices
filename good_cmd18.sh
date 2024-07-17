#!/bin/bash

## -- Best practice 18: Running container with cgroups limits and without the "--cgroup-parent" option --  ##
docker run -d \
    --name my-nginx-container \
    --cpus=".5" \       # Limit CPU to 50% of one core, thanks to cgroups
    --memory="256m" \   # Limit memory to 256MB, thanks to cgroups
    -p 80:80 \
    nginx:alpine
