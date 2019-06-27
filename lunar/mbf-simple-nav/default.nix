
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, mbf-abstract-core, pluginlib, actionlib-msgs, tf, mbf-msgs, catkin, tf2-ros, tf2, nav-msgs, actionlib, std-msgs, dynamic-reconfigure, roscpp, mbf-abstract-nav, geometry-msgs }:
buildRosPackage {
  pname = "ros-lunar-mbf-simple-nav";
  version = "0.2.4-r1";

  src = fetchurl {
    url = https://github.com/uos-gbp/move_base_flex-release/archive/release/lunar/mbf_simple_nav/0.2.4-1.tar.gz;
    sha256 = "6f529d93ac7162c9e25d934897f7acce054189bd8bdb4b15eebd55f0235d9fb7";
  };

  buildInputs = [ std-srvs mbf-abstract-core pluginlib actionlib-msgs tf mbf-msgs tf2-ros tf2 nav-msgs actionlib dynamic-reconfigure std-msgs roscpp mbf-abstract-nav geometry-msgs ];
  propagatedBuildInputs = [ std-srvs mbf-abstract-core pluginlib actionlib-msgs tf mbf-msgs tf2-ros tf2 nav-msgs actionlib dynamic-reconfigure std-msgs roscpp mbf-abstract-nav geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_simple_nav package contains a simple navigation server implementation of Move Base Flex (MBF). The simple navigation server is bound to no map representation. It provides actions for planning, controlling and recovering. MBF loads all defined plugins which are defined in the lists *planners*, *controllers* and *recovery_behaviors*. Each list holds a pair of a *name* and a *type*. The *type* defines which kind of plugin to load. The *name* defines under which name the plugin should be callable by the actions. 

        It tries to load the defined plugins which implements the defined interfaces in <a href="wiki.ros.org/mbf_abstract_core">mbf_abstract_core</a>.'';
    license = with lib.licenses; [ "3-Clause BSD" ];
  };
}
