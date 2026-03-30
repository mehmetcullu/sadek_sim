#!/usr/bin/env bash
set -euo pipefail

if [ -f /opt/ros/humble/setup.bash ]; then
  set +u
  source /opt/ros/humble/setup.bash
  set -u
fi

if [ -d /ws/src/virtual_maize_field ]; then
  export PYTHONPATH="/ws/src/virtual_maize_field:${PYTHONPATH:-}"
fi

if [ -f /ws/install_harmonic/setup.bash ]; then
  set +u
  source /ws/install_harmonic/setup.bash
  set -u
elif [ -f /ws/install/setup.bash ]; then
  set +u
  source /ws/install/setup.bash
  set -u
fi

exec "$@"
