#!/usr/bin/env bash

set -e

git clone https://gitlab.com/kalilinux/build-scripts/live-build-config.git
cd live-build-config || exit 1
cp -r /variant-xfce-custom kali-config/variant-xfce-custom

./build.sh --variant xfce-custom --verbose

