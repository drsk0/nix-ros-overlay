
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ament-lint-auto, ament-lint-common, camera-info-manager, cv-bridge, image-transport, rclcpp, rclcpp-components, sensor-msgs, python3Packages, rclpy, std-srvs, yolo-msgs, message-filters, tf2-ros-py}:
buildRosPackage {
  pname = "ros-humble-yolo-ros";
  version = "4.2.0";

  src = fetchurl {
    url = "https://github.com/mgonzs13/yolo_ros/archive/refs/tags/4.2.0.tar.gz";
    name = "4.2.0.tar.gz";
    sha256 = "sha256-pnYB13tg6220KY39Ns5wGJ+BkGdm6n9iHsYMXBANuvo=";
  };
  sourceRoot = "yolo_ros-4.2.0/yolo_ros";

  patchPhase = ''
      # Example patches for Python files
      substituteInPlace yolo_ros/debug_node.py \
        --replace "int0" "intp"

      # # Or use sed for more complex replacements
      # sed -i 's/pattern/replacement/g' yolo_ros/yolo_node.py

      # You can also apply patch files
      # patch -p1 < ./your-patch-file.patch
    '';

  buildType = "ament_python";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.opencv-python python3Packages.typing-extensions python3Packages.ultralytics python3Packages.lap rclpy rclcpp rclcpp-components cv-bridge std-srvs yolo-msgs message-filters tf2-ros-py];
  # nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "A ROS 2 YOLO processing node";
    license = with lib.licenses; [ mit ];
  };
}
