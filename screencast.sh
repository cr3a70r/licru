#!/bin/bash

# (c) https://gist.github.com/vodolaz095/4676293

# Simple bash script to record screencast with ffmpeg in high quality to local file 
# Простой скрипт чтобы сделать скринкаст использя ffmpeg в локальный файл


if [ "$1" = '--help' ];then
    echo 'Usage ./screencast.sh [filename]'
else
    dimensions=`xdpyinfo | grep 'dimensions:'|awk '{print $2}'`
    if [ -n "$1" ];then
        outFile="$1"
    else
        outFile="$HOME/out.avi"
    fi
    ffmpeg -f x11grab -s "$dimensions" -r 25 -i :0.0 -qscale 0  "$outFile"
fi
