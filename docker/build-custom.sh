#!/usr/bin/env bash

if [[ -d live-build-config ]]
then
  cd live-build-config || exit 1
  git pull origin master
else
  git clone https://gitlab.com/kalilinux/build-scripts/live-build-config.git --single-branch -b master
  ls -al
  echo $PWD
  cd live-build-config || exit 1
fi

cp -r /variant-xfce-custom kali-config/variant-xfce-custom


bash -x ./build.sh --variant xfce-custom --verbose \
  && ls -al images \
  && cp images/*.iso /output \
  || exit 1
