#!/bin/bash
export TRIPLET=$(uname -m)-linux-gnu
export ROS_BASE=$SNAP/rosruntime
export PYTHONPATH=$PYTHONPATH:$ROS_BASE/lib/python3.10/site-packages
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROS_BASE/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROS_BASE/lib/$TRIPLET
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROS_BASE/usr/lib
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROS_BASE/usr/include/comm/datalayer/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROS_BASE/usr/lib/$TRIPLET
source $ROS_BASE/opt/ros/humble/setup.bash #source if ros2 using debian package is build as a snap
#source $ROS_BASE/setup.bash #source if ros2 is built from source
source $SNAP/local_setup.bash && $SNAP/app/lib/app/io_manager_output
