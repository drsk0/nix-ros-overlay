
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-msgs, message-generation, catkin, message-runtime }:
buildRosPackage {
  pname = "ros-kinetic-khi-robot-msgs";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_robot_msgs/1.1.2-1.tar.gz;
    sha256 = "71ab525f8ea629ca0a3cce453e6bee8fe65ed196b1af39b4dd4df9f4d36e6c10";
  };

  buildInputs = [ std-msgs message-generation ];
  propagatedBuildInputs = [ std-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains KHI ROS robot msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
