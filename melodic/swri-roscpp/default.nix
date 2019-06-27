
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, gtest, catkin, diagnostic-updater, rostest, nav-msgs, message-generation, marti-common-msgs, message-runtime, dynamic-reconfigure, std-msgs, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-swri-roscpp";
  version = "2.9.0-r1";

  src = fetchurl {
    url = https://github.com/swri-robotics-gbp/marti_common-release/archive/release/melodic/swri_roscpp/2.9.0-1.tar.gz;
    sha256 = "970ca3ddeb6fe30b9b2cf14fd33e104fb6d9cead6612545f347ae0b09a58f84f";
  };

  buildInputs = [ std-srvs diagnostic-updater nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  checkInputs = [ gtest rostest message-generation message-runtime rosunit ];
  propagatedBuildInputs = [ std-srvs diagnostic-updater nav-msgs marti-common-msgs dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''swri_roscpp'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
