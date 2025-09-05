{
  lib,
  buildRosPackage,
  fetchFromGitHub,
  ament-cmake-ros,
  boost,
  eigen,
  opencv,
  ceres-solver,
  cv-bridge,
  tf2-ros,
  tf2-geometry-msgs,
  image-transport,
  nav-msgs,
}:
buildRosPackage {
  pname = "ros-humble-open-vins-core";
  version = "2.4";

  src = fetchFromGitHub {
    owner = "rpng";
    repo = "open_vins";
    rev = "d0075dd86f2d96618f14829e6c33425f9278610a";
    sha256 = "sha256-1Xi8VBtTCapfDeRG/BfqQulKBYHheobTmWTQJ2a+lJM=";
    fetchSubmodules = true;
  };

  sourceRoot = "source/ov_core";
  buildType = "cmake";
  buildInputs = [
    eigen
    opencv
    boost
    ceres-solver
    cv-bridge
    tf2-ros
    tf2-geometry-msgs
    image-transport
    nav-msgs
  ];
  checkInputs = [ ];
  propagatedBuildInputs = [ ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "dn open source platform for visual-inertial navigation research.";
    license = with lib.licenses; [ gpl3 ];
  };
}
