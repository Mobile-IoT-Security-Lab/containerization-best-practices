#!/bin/zsh

## -- Best practice 2: limit capabilities -- ##
# docker run --cap-drop all --cap-add NET_BIND_SERVICE --cap-add SYS_CHROOT <image>
docker run --cap-drop all --cap-add NET_BIND_SERVICE --cap-add SYS_CHROOT ubuntu:latest
