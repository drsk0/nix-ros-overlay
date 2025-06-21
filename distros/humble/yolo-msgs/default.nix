
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, std-msgs, geometry-msgs, rosidl-default-runtime, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-humble-yolo-msgs";
  version = "4.2.0";

  src = fetchurl {
    url = "https://github.com/mgonzs13/yolo_ros/archive/refs/tags/4.2.0.tar.gz";
    name = "4.2.0.tar.gz";
    sha256 = "sha256-pnYB13tg6220KY39Ns5wGJ+BkGdm6n9iHsYMXBANuvo=";
  };
  sourceRoot = "yolo_ros-4.2.0/yolo_msgs";

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs geometry-msgs];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 YOLO messages";
    license = with lib.licenses; [ mit ];
  };
}
