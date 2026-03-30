#!/usr/bin/env bash
set -euo pipefail

cd /ws

set +u
source /opt/ros/humble/setup.bash
set -u
colcon --log-base /ws/log_harmonic build \
  --symlink-install \
  --build-base /ws/build_harmonic \
  --install-base /ws/install_harmonic
set +u
source /ws/install_harmonic/setup.bash
set -u

echo "Build completed: colcon workspace is ready."
