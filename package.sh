#!/bin/bash

PKG_VERSION="0.3.0"
PKG_ITERATION=1

if [[ ! -d /tmp/output/raspbian-bullseye ]]; then
  mkdir -p /tmp/output/raspbian-bullseye
fi

for VERSION in ${PKG_VERSION} 0.0.1
do
	if [[ ${VERSION} == "0.0.1" ]]; then
		PKG_ITERATION=1
	fi
fpm \
  -s dir \
  -t deb \
  -v ${VERSION} \
  --iteration ${PKG_ITERATION} \
  -n r4pi-repo-conf \
  --vendor "r4pi.org" \
  --deb-priority "optional" \
  --deb-field 'Bugs: https://github.com/r4pi/r4pi-repo-conf/issues' \
  --url "https://r4pi.org" \
  --description "R4Pi.org repository config" \
  --maintainer "r4pi.org https://r4pi.org" \
  --license "MIT" \
  -a all \
  -p /tmp/output/raspbian-bullseye/ \
  ./src/=/

done
