#!/bin/sh
gnome-terminal -- sh -c 'cd /home/shintaro/multires_ws && source ./devel/setup.zsh; roslaunch metavision_ros_driver recording_driver.launch bag:=`pwd`/recording.bag'
sleep 5
gnome-terminal -- sh -c 'cd /home/shintaro/multires_ws && source ./devel/setup.zsh; rosrun event_array_tools perf /event_camera/events'
sleep 5
gnome-terminal -- sh -c 'cd /home/shintaro/multires_ws && source ./devel/setup.zsh; rosrun metavision_ros_driver start_recording.py'
