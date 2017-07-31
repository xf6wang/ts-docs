#!/usr/bin/bash

PUBDIR=${PUBDIR:-"../swoc-publish"}
if [ -z "${SRCDIR}" ] ; then SRCDIR="$PWD"; fi

if cd ${PUBDIR} ; then
  echo Copying from ${SRCDIR}/docbuild/html
else
  echo Publish respository \'${PUBDIR}\' not found.
  exit 1
fi

rm -rf *
cp -r ${SRCDIR}/docbuild/html/* .
git add *
git commit --message "Update" && git push
