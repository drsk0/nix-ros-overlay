
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, gtest, pythonPackages, cmake, gmock }:
buildRosPackage {
  pname = "ros-kinetic-catkin";
  version = "0.7.18-r1";

  src = fetchurl {
    url = https://github.com/ros-gbp/catkin-release/archive/release/kinetic/catkin/0.7.18-1.tar.gz;
    sha256 = "f6827d5527925cf748b4791270fb2af25ca55cdde0c580c04767f0def5eb6098";
  };

  buildInputs = [ python pythonPackages.catkin-pkg pythonPackages.empy ];
  checkInputs = [ pythonPackages.nose pythonPackages.mock ];
  propagatedBuildInputs = [ python pythonPackages.nose gtest pythonPackages.catkin-pkg gmock pythonPackages.empy ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Low-level build system macros and infrastructure for ROS.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
