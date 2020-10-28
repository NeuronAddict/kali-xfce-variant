#!/usr/bin/env bash

git clone https://gitlab.com/kalilinux/build-scripts/live-build-config.git
cd live-build-config || exit 1
cp -r /variant-xfce-custom kali-config/variant-xfce-custom


bash -x ./build.sh --variant xfce-custom --verbose

ls -al images
cp images/*.iso /output
