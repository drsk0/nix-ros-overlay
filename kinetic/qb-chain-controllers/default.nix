
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, control-msgs, tf2-geometry-msgs, sensor-msgs, catkin, tf2-ros, tf2, controller-interface, interactive-markers, roscpp, geometry-msgs }:
buildRosPackage {
  pname = "ros-kinetic-qb-chain-controllers";
  version = "2.1.1-r1";

  src = fetchurl {
    url = https://bitbucket.org/qbrobotics/qbchain-ros-release/get/release/kinetic/qb_chain_controllers/2.1.1-1.tar.gz;
    sha256 = "ea955c146e8c11463fb7c928ec248b5581427ad098abffc404df70b010907684";
  };

  buildInputs = [ tf2-geometry-msgs control-msgs sensor-msgs tf2-ros tf2 controller-interface interactive-markers roscpp geometry-msgs ];
  propagatedBuildInputs = [ tf2-geometry-msgs control-msgs sensor-msgs tf2-ros tf2 controller-interface interactive-markers roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package contains the specific controllers for qbrobotics® kinematic structures, e.g. the qbdelta controller.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
