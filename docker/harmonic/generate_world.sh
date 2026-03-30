#!/usr/bin/env bash
set -euo pipefail

cd /ws

set +u
source /opt/ros/humble/setup.bash
set -u

if [ -f /ws/install/setup.bash ]; then
  set +u
  source /ws/install/setup.bash
  set -u
fi

if [ -f /ws/install_harmonic/setup.bash ]; then
  set +u
  source /ws/install_harmonic/setup.bash
  set -u
fi

ros2 run virtual_maize_field generate_world "${1:-fre22_task_navigation_mini}"
