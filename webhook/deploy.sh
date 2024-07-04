#!/bin/bash

NAME=$1
URL=$2
COMMIT=$3

CLONE_DIR=$(mktemp -d)
DEST_DIR=${HOME}/www/${NAME}

mkdir -p ${DEST_DIR}

git clone --bare ${URL} ${CLONE_DIR}
git --work-tree ${DEST_DIR} --git-dir=${CLONE_DIR} checkout --force ${COMMIT}
npm --prefix=${DEST_DIR} install
npm --prefix=${DEST_DIR} run build
rm -rf ${CLONE_DIR}
