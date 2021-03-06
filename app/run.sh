#! /bin/bash

# TODO this should be in a loop
mkdir -p /s3/mogreps-uk
goofys mogreps-uk /s3/mogreps-uk

mkdir -p /s3/mogreps-g
goofys mogreps-g /s3/mogreps-g


mkdir -p /s3/graeme-misc-london
goofys graeme-misc-london /s3/graeme-misc-london


mkdir -p /s3/stephen-sea-public-london
goofys stephen-sea-public-london /s3/stephen-sea-public-london

cd /opt/app
git pull



if [ "$IS_WORKER" = true ] ; then
    source ./run-worker.sh
else
    source ./run-server.sh
fi
