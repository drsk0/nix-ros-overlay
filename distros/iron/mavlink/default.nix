
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cmake, python3, python3Packages, ros-environment }:
buildRosPackage {
  pname = "ros-iron-mavlink";
  version = "2023.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mavlink-gbp-release/archive/release/iron/mavlink/2023.6.6-1.tar.gz";
    name = "2023.6.6-1.tar.gz";
    sha256 = "5089e51b67888899d670ec5a134c3995e047a1247bdfb2f1d92706a45e71d128";
  };

  buildType = "cmake";
  buildInputs = [ ament-cmake cmake python3 python3Packages.future python3Packages.lxml ros-environment ];
  nativeBuildInputs = [ ament-cmake cmake ros-environment ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}