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
 --name test-cuda10.1-cudnn7-devel\
 test/cudnn:7.6.5.32-cuda10.1-devel"

echo $cmd_str
eval $cmd_str
