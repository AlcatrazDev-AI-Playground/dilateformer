#!/usr/bin/env bash

MODEL=$1
mkdir ../working/${MODEL}
touch ../working/${MODEL}/run_log.txt
shift
python main.py --eval --resume dilate_base.pth --data-path /kaggle/input/imagenet-1k/val/val \
     "$@"        \
     2>&1 | tee -a ../working/${MODEL}/run_log.txt
