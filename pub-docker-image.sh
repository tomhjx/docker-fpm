#!/bin/bash
root=`dirname $0`
tag0=$1

for f in $root/docker/*
do
    if test -d $f
    then
        tag1="${f##*/}"
        tag="$tag0-$tag1"
        docker build -t $tag
        docker push $tag
    fi
done