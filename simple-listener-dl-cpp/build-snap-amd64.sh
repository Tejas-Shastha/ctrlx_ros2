#!/bin/bash

source colcon-build.sh
if [ $? -eq 0 ]
then
    echo " "
else
    exit 1
fi

sudo snapcraft clean --destructive-mode
sudo snapcraft --destructive-mode
