#!/bin/bash
WORK_DIR=work

if [ ! -d $WORK_DIR ]; then
  mkdir ./$WORK_DIR
  chmod 775 ./$WORK_DIR
fi

cmd="docker run --rm -d\
 --gpus all\
 -p 2022:22\
 -v $(pwd)/work:/home/$USER/$WORK_DIR\
 --name cuda10.1-devel\
 morpheus9631/cuda:10.1-devel"

echo $cmd
eval $cmd
