#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 tag"
 exit
fi

TAG=$1

TAG_COMMAND="docker tag charles:compose kurron/docker-charles-proxy:$TAG"
echo $TAG_COMMAND
$TAG_COMMAND

PUSH_COMMAND="docker push kurron/docker-charles-proxy:$TAG"
echo $PUSH_COMMAND
$PUSH_COMMAND
