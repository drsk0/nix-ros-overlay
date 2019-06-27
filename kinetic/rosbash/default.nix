
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, catkin }:
buildRosPackage {
  pname = "ros-kinetic-rosbash";
  version = "1.14.6-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros-release/archive/release/kinetic/rosbash/1.14.6-1.tar.gz;
    sha256 = "7853609d105cdf5042d13a6914ef8f1bc4734d48b68d9708f887b94b37cfbff0";
  };

  propagatedBuildInputs = [ rospack catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Assorted shell commands for using ros with bash.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
