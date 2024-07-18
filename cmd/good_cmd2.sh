#!/bin/zsh

echo "This is a good command"
# docker run --cap-drop all --cap-add NET_BIND_SERVICE --cap-add SYS_CHROOT <image>
docker run --cap-drop all --cap-add NET_BIND_SERVICE --cap-add SYS_CHROOT ubuntu:latest
