
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, tf2-ros, rviz, qt5, eigen, roscpp }:
buildRosPackage {
  pname = "ros-melodic-agni-tf-tools";
  version = "0.1.2-r1";

  src = fetchurl {
    url = https://github.com/ubi-agni-gbp/agni_tf_tools-release/archive/release/melodic/agni_tf_tools/0.1.2-1.tar.gz;
    sha256 = "c36d7644b274ae9305e3ad1193039d05bd567c3e92a52794d3df735c2302cbaa";
  };

  buildInputs = [ tf2-ros qt5.qtbase rviz eigen roscpp ];
  propagatedBuildInputs = [ roscpp rviz tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package provides a gui program as well as a rviz plugin to publish static transforms.
  Both support the transformation between various Euler angle representations.
  The rviz plugin also allows to configure the transform with an interactive marker.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
