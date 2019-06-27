
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cob-collision-monitor, cob-moveit-bringup, cob-obstacle-distance-moveit, cob-moveit-interface, catkin, cob-pick-place-action, cob-lookat-action, cob-grasp-generation }:
buildRosPackage {
  pname = "ros-kinetic-cob-manipulation";
  version = "0.7.2-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_manipulation-release/archive/release/kinetic/cob_manipulation/0.7.2-1.tar.gz;
    sha256 = "f3f9dda540aeaa619187cb816c424e09e9f44c326567cbebd83a3147f483087b";
  };

  propagatedBuildInputs = [ cob-collision-monitor cob-moveit-bringup cob-obstacle-distance-moveit cob-moveit-interface cob-pick-place-action cob-lookat-action cob-grasp-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_manipulation stack includes packages that provide manipulation capabilities for Care-O-bot.'';
    license = with lib.licenses; [ asl20 ];
  };
}
