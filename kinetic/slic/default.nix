
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-slic";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/slic/2.1.12-1.tar.gz;
    sha256 = "e1dc3810e9ad328ed8fb3fdf8004e09efdec04a6ed93c1982d03fd7583e7321a";
  };

  buildInputs = [ cmake-modules git cacert openssl opencv3 ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''SLIC-Superpizel ROS Wrapper
  This file contains the class elements of the class Slic. This class is an
  implementation of the SLIC Superpixel algorithm by Achanta et al. [PAMI'12,
  vol. 34, num. 11, pp. 2274-2282].

  This implementation is created for the specific purpose of creating
  over-segmentations in an OpenCV-based environment.'';
    license = with lib.licenses; [ "N/A" ];
  };
}
