#!/bin/bash
WORK_DIR=work

if [ ! -d $WORK_DIR ]; then
  mkdir ./$WORK_DIR
  chmod 775 ./$WORK_DIR
fi

cmd_str="docker run --rm -d\
 --gpus all\
 -p 2022:22\
 -v $(pwd)/work:/home/$USER/$WORK_DIR\
 --name test-cuda10.1\
 morpheus9631/cuda:10.1-sshd"

echo $cmd_str
eval $cmd_str
