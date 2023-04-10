# For DAVIS
roslaunch dvs_renderer davis_mono.launch
# Open another
rosbag record /dvs/events /dvs/image_raw /dvs/imu

# For Metavision
roslaunch metavision_ros_driver recording_driver.launch bag:=`pwd`/test3.bag

# Open another
rosrun metavision_ros_driver start_recording.py
rosrun metavision_ros_driver stop_recording.py
