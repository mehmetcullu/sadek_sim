#!/usr/bin/env bash
set -euo pipefail

cd /ws

WORLD_FILE="/ws/.ros/virtual_maize_field/generated.world"
HEADLESS=0

for arg in "$@"; do
  if [ "${arg}" = "--headless" ]; then
    HEADLESS=1
  else
    WORLD_FILE="${arg}"
  fi
done

if [ ! -f "${WORLD_FILE}" ]; then
  echo "World file not found: ${WORLD_FILE}"
  echo "Run ./docker/harmonic/generate_world.sh first."
  exit 1
fi

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

WORLD_PATH="$(dirname "${WORLD_FILE}")"
WORLD_NAME="$(basename "${WORLD_FILE}")"

if [ "${HEADLESS}" -eq 1 ]; then
  exec ros2 launch virtual_maize_field simulation.launch.py \
    world_path:="${WORLD_PATH}" \
    world_name:="${WORLD_NAME}" \
    headless:=True
fi

exec ros2 launch virtual_maize_field simulation.launch.py \
  world_path:="${WORLD_PATH}" \
  world_name:="${WORLD_NAME}"
