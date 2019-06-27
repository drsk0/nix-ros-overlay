
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, moveit-fake-controller-manager, moveit-ros-move-group, moveit-ros-visualization, catkin, moveit-kinematics, rostest, rviz, khi-rs-description, robot-state-publisher, roslaunch, tf, joint-state-publisher, xacro, moveit-planners-ompl }:
buildRosPackage {
  pname = "ros-kinetic-khi-rs007n-moveit-config";
  version = "1.1.2-r1";

  src = fetchurl {
    url = https://github.com/Kawasaki-Robotics/khi_robot-release/archive/release/kinetic/khi_rs007n_moveit_config/1.1.2-1.tar.gz;
    sha256 = "3e6de855e5f31817ccd1cd379ebab47fb9ebda7af634e98dbeed11697c9d7650";
  };

  buildInputs = [ khi-rs-description ];
  checkInputs = [ rostest roslaunch ];
  propagatedBuildInputs = [ moveit-fake-controller-manager moveit-ros-move-group moveit-ros-visualization moveit-kinematics rviz khi-rs-description robot-state-publisher tf joint-state-publisher xacro moveit-planners-ompl ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An automatically generated package with all the configuration and launch files for using the khi_rs007n with the MoveIt! Motion Planning Framework'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
