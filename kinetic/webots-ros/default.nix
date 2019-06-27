
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tf, sensor-msgs, catkin, message-generation, message-runtime, rospy, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-webots-ros";
  version = "2.0.3-r1";

  src = fetchurl {
    url = https://github.com/omichel/webots_ros-release/archive/release/kinetic/webots_ros/2.0.3-1.tar.gz;
    sha256 = "7da3bebefa67a5b6b70d70bc3353c29171d784f8d6e6a34db65da2ec6a72365d";
  };

  buildInputs = [ sensor-msgs roscpp message-generation rospy std-msgs tf ];
  propagatedBuildInputs = [ sensor-msgs roscpp message-runtime rospy std-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The ROS package containing examples for interfacing ROS with the standard ROS controller of Webots'';
    license = with lib.licenses; [ asl20 ];
  };
}
