#!/bin/sh

NAME=kde-plasma-alsa-volume
GIT_NAME=plasmaVolume
COMMIT="ad7816df87"

git clone -q git://github.com/F1ash/${GIT_NAME}.git

pushd ${GIT_NAME} > /dev/null 2>&1
git checkout -qf $COMMIT
VERSION=`cat ./VERSION`
popd > /dev/null 2>&1

# Remove .git
rm -rf ${GIT_NAME}/.git

mv ${GIT_NAME} ${NAME}-${VERSION}
# make tarboll
tar cfjv ${NAME}-${VERSION}.tar.bz2 ${NAME}-${VERSION} > /dev/null 2>&1

# remove dir
rm -rf ${NAME}-${VERSION}
