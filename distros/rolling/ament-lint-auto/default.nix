
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-lint-auto";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_lint_auto/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "10453194a36e63e7be2dde33954fe282d0b6fc49bf81e36e8c2de31435f2e1da";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The auto-magic functions for ease to use of the ament linters in CMake.'';
    license = with lib.licenses; [ asl20 ];
  };
}