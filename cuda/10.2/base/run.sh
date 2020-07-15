#!/bin/bash
WORK_DIR=work

if [ ! -d $WORK_DIR ]; then
  mkdir ./$WORK_DIR
  chmod 775 ./$WORK_DIR
fi

cmd="docker run --rm -d\
 --gpus all\
 -p 2022:22\
 -v $(pwd)/work:/home/user/$WORK_DIR\
 --name cuda10.2\
 morpheus9631/cuda:10.2-base"

echo $cmd
eval $cmd
