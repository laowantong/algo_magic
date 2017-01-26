#!/bin/bash

PYTHON=~/anaconda/bin/python

cd algo_magic

if [ -d "dist" ] ; then
  rm -R "dist"
fi

if [ -d "build" ] ; then
  rm -R "build"
fi

if [ -d "algo_magic.egg-info" ] ; then
  rm -R "algo_magic.egg-info"
fi

$PYTHON setup.py install
$PYTHON setup.py sdist
$PYTHON setup.py bdist_wheel --universal

# ~/anaconda/bin/twine upload dist/*

echo "Done."
