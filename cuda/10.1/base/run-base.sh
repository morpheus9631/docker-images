#!/bin/bash
WORK_DIR=work

if [ ! -d $WORK_DIR ]; then
  mkdir ./$WORK_DIR
  chmod 775 ./$WORK_DIR
fi

cmd_str="docker run --rm -d\
 --gpus all\
 -p 2022:22\
 -v $(pwd)/work:/home/user/$WORK_DIR\
 --name cuda10.1-base\
 morpheus9631/cuda:10.1-base"

echo $cmd_str
eval $cmd_str
