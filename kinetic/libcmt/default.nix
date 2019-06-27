
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, cacert, openssl, cmake, opencv3 }:
buildRosPackage {
  pname = "ros-kinetic-libcmt";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/libcmt/2.1.12-1.tar.gz;
    sha256 = "a6bb669fa1ac0c05fef58060c6869dd9e1cff4670ec765ccff28af04a596003b";
  };

  buildInputs = [ openssl cacert git opencv3 ];
  propagatedBuildInputs = [ opencv3 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libCMT ROS Wrapper'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
