#!/bin/bash

# (c) https://gist.github.com/vodolaz095/9101340

# Timer script to help make tea
# Скрипт таймер для приготовления чая

if [ $1 ]
  then
    echo "Setting timer for $1 minutes";
    DELAY=$(echo "scale=4; $1*60+1" | bc)
    DTS=$(date +%H:%M:%S)
    (sleep $DELAY; notify-send "TeaHelper by Vodolaz095" "$DTS : Tea is ready!") &
  else
   echo 'Enter how many minutes to wait for tea to be ready'
   echo 'Oolong needs 2 minutes for first boil (100 C), every next one need +1 minute. Max 5-7 boils'
   echo 'Green needs 3 minutes for first boil (70 C), every next one need +1 minute. Max 2-3 boils'
   echo 'Black tea needs 4 minutes for first boil (100 C), every next one need +1 minute. Max 2-3 boils'
fi
