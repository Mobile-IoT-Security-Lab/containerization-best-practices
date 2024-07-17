#!/bin/bash

# Bad Example: Running container without cgroups limits and option to set cgroup parent
docker run -d \
    --name my-nginx-container \
    --cgroup-parent    
    -p 80:80 \
    nginx:alpine
