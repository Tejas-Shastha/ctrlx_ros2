#!/bin/bash

rosdep install -i --from-path src --rosdistro humble -y
if [ $? -eq 0 ]
then
    echo " "
else
    exit 1
fi

# rm -rf install/
# mkdir -p install/mtc_tutorial
# rm -rf build/
# rm -rf log/

source /opt/ros/humble/setup.bash
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --parallel-workers 1
