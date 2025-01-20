#!/bin/bash

b='7.2.34'

tag=$(git describe --tags `git rev-list --tags="7.2.34.*" --max-count=1`)

echo $tag

array=(${tag//./ }) 

echo ${array[3]}