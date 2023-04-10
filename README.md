
# Install ROS


# Install OpenEB (v3.1.2)


# setup metavision_ros_driver

- catkin_simple
- event_array_msgs
- event_array_tools
- rpg_dvs_ros

- event_array_codecs
- event_array_py
- nodelet_rosbag
- metavision_ros_driver
- prophesee_event_msgs


Prerequisites

```
sudo apt-get install ros-noetic-pybind11-catkin

```



Clone and prepare.

```
mkdir -p ~/metavision_ros_driver_ws/src
cd ~/metavision_ros_driver_ws
git clone git@github.com:berndpfrommer/metavision_ros_driver src/metavision_ros_driver
wstool init src src/metavision_ros_driver/metavision_ros_driver.rosinstall

pkg=event_array_tools
cd ~/metavision_ros_driver_ws
git clone git@github.com:berndpfrommer/${pkg}.git src/${pkg}
wstool merge -t src src/${pkg}/${pkg}.rosinstall
wstool update -t src

pkg=event_array_codecs
git clone git@github.com:berndpfrommer/${pkg}.git src/${pkg}
wstool merge -t src src/${pkg}/${pkg}.rosinstall
wstool update -t src

pkg=event_array_py
git clone git@github.com:berndpfrommer/${pkg}.git src/${pkg}
wstool merge -t src src/${pkg}/${pkg}.rosinstall
wstool update -t src


# or to update an existing space
# wstool merge -t src src/metavision_ros_driver/metavision_ros_driver.rosinstall
# wstool update -t src
```


Build.

```
catkin config -DCMAKE_BUILD_TYPE=RelWithDebInfo  # (optionally add -DCMAKE_EXPORT_COMPILE_COMMANDS=1)
catkin build
```
