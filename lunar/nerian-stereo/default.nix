
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, sensor-msgs, cv-bridge, catkin, message-generation, curl, message-runtime, dynamic-reconfigure, std-msgs, nodelet, roscpp }:
buildRosPackage {
  pname = "ros-lunar-nerian-stereo";
  version = "3.4.0-r1";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_stereo-release/archive/release/lunar/nerian_stereo/3.4.0-1.tar.gz;
    sha256 = "4e78c7bef3da4162b7ca00a14838ed252380cfda0738c7891febd9e46b699445";
  };

  buildInputs = [ boost sensor-msgs cv-bridge roscpp message-generation dynamic-reconfigure std-msgs nodelet ];
  propagatedBuildInputs = [ boost sensor-msgs cv-bridge curl nodelet dynamic-reconfigure std-msgs message-runtime roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Driver node for SceneScan and SP1 stereo vision sensors by Nerian Vision GmbH'';
    license = with lib.licenses; [ mit ];
  };
}
