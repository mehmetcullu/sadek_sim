## Generating new maize field worlds
This package includes a script (`virtual_maize_field/generate_world.py`) that can generate randomized agricultural worlds. All parameters are optional and have default values. All comma separated arguments can be scaler as well. 

You can call the script using
```bash
ros2 run virtual_maize_field generate_world
```
The resulting file will be placed in `$ROS_HOME/virtual_maize_field/generated.world`. 

You can use this script by one of the defined config files or specifying the parameters below:
<details>
  <summary>Click to show all possible arguments</summary>
  
  ```
  usage: generate_world [-h] [--row_length ROW_LENGTH]
                      [--rows_curve_budget ROWS_CURVE_BUDGET]
                      [--row_width ROW_WIDTH] [--rows_count ROWS_COUNT]
                      [--row_segments [ROW_SEGMENTS [ROW_SEGMENTS ...]]]
                      [--row_segment_straight_length_min ROW_SEGMENT_STRAIGHT_LENGTH_MIN]
                      [--row_segment_straight_length_max ROW_SEGMENT_STRAIGHT_LENGTH_MAX]
                      [--row_segment_sincurved_offset_min ROW_SEGMENT_SINCURVED_OFFSET_MIN]
                      [--row_segment_sincurved_offset_max ROW_SEGMENT_SINCURVED_OFFSET_MAX]
                      [--row_segment_sincurved_length_min ROW_SEGMENT_SINCURVED_LENGTH_MIN]
                      [--row_segment_sincurved_length_max ROW_SEGMENT_SINCURVED_LENGTH_MAX]
                      [--row_segment_curved_radius_min ROW_SEGMENT_CURVED_RADIUS_MIN]
                      [--row_segment_curved_radius_max ROW_SEGMENT_CURVED_RADIUS_MAX]
                      [--row_segment_curved_arc_measure_min ROW_SEGMENT_CURVED_ARC_MEASURE_MIN]
                      [--row_segment_curved_arc_measure_max ROW_SEGMENT_CURVED_ARC_MEASURE_MAX]
                      [--row_segment_island_radius_min ROW_SEGMENT_ISLAND_RADIUS_MIN]
                      [--row_segment_island_radius_max ROW_SEGMENT_ISLAND_RADIUS_MAX]
                      [--ground_resolution GROUND_RESOLUTION]
                      [--ground_elevation_max GROUND_ELEVATION_MAX]
                      [--ground_headland GROUND_HEADLAND]
                      [--ground_ditch_depth GROUND_DITCH_DEPTH]
                      [--plant_spacing_min PLANT_SPACING_MIN]
                      [--plant_spacing_max PLANT_SPACING_MAX]
                      [--plant_height_min PLANT_HEIGHT_MIN]
                      [--plant_height_max PLANT_HEIGHT_MAX]
                      [--plant_radius PLANT_RADIUS]
                      [--plant_radius_noise PLANT_RADIUS_NOISE]
                      [--plant_placement_error_max PLANT_PLACEMENT_ERROR_MAX]
                      [--plant_mass PLANT_MASS]
                      [--hole_prob [HOLE_PROB [HOLE_PROB ...]]]
                      [--hole_size_max [HOLE_SIZE_MAX [HOLE_SIZE_MAX ...]]]
                      [--crop_types [CROP_TYPES [CROP_TYPES ...]]]
                      [--litters LITTERS]
                      [--litter_types [LITTER_TYPES [LITTER_TYPES ...]]]
                      [--weeds WEEDS]
                      [--weed_types [WEED_TYPES [WEED_TYPES ...]]]
                      [--ghost_objects GHOST_OBJECTS]
                      [--location_markers LOCATION_MARKERS]
                      [--load_from_file LOAD_FROM_FILE] [--seed SEED]
                      [--show_map]
                      [{fre21_task_2_mini,fre21_task_2_fast,fre21_task_1_mini,fre22_task_mapping_mini,fre22_task_navigation,fre21_task_3_fast,fre22_task_mapping,fre21_task_4_fast,fre21_task_2,fre21_task_3_mini,fre22_task_mapping_fast,fre21_task_1,fre21_task_3,fre22_task_navigation_fast,fre21_task_1_fast,fre21_task_4,fre22_task_navigation_mini,fre21_task_4_mini}]

Generate a virtual maize field world for Gazebo.

positional arguments:
  {fre21_task_2_mini,fre21_task_2_fast,fre21_task_1_mini,fre22_task_mapping_mini,fre22_task_navigation,fre21_task_3_fast,fre22_task_mapping,fre21_task_4_fast,fre21_task_2,fre21_task_3_mini,fre22_task_mapping_fast,fre21_task_1,fre21_task_3,fre22_task_navigation_fast,fre21_task_1_fast,fre21_task_4,fre22_task_navigation_mini,fre21_task_4_mini}
                        Config file name in the config folder

optional arguments:
  -h, --help            show this help message and exit
  --row_length ROW_LENGTH
                        default_value: 12.0
  --rows_curve_budget ROWS_CURVE_BUDGET
                        default_value: 1.5707963267948966
  --row_width ROW_WIDTH
                        default_value: 0.75
  --rows_count ROWS_COUNT
                        default_value: 6
  --row_segments [ROW_SEGMENTS [ROW_SEGMENTS ...]]
                        default_value: ['straight', 'curved']
  --row_segment_straight_length_min ROW_SEGMENT_STRAIGHT_LENGTH_MIN
                        default_value: 0.5
  --row_segment_straight_length_max ROW_SEGMENT_STRAIGHT_LENGTH_MAX
                        default_value: 1
  --row_segment_sincurved_offset_min ROW_SEGMENT_SINCURVED_OFFSET_MIN
                        default_value: 0.5
  --row_segment_sincurved_offset_max ROW_SEGMENT_SINCURVED_OFFSET_MAX
                        default_value: 1.5
  --row_segment_sincurved_length_min ROW_SEGMENT_SINCURVED_LENGTH_MIN
                        default_value: 3
  --row_segment_sincurved_length_max ROW_SEGMENT_SINCURVED_LENGTH_MAX
                        default_value: 5
  --row_segment_curved_radius_min ROW_SEGMENT_CURVED_RADIUS_MIN
                        default_value: 3.0
  --row_segment_curved_radius_max ROW_SEGMENT_CURVED_RADIUS_MAX
                        default_value: 10.0
  --row_segment_curved_arc_measure_min ROW_SEGMENT_CURVED_ARC_MEASURE_MIN
                        default_value: 0.3
  --row_segment_curved_arc_measure_max ROW_SEGMENT_CURVED_ARC_MEASURE_MAX
                        default_value: 1.0
  --row_segment_island_radius_min ROW_SEGMENT_ISLAND_RADIUS_MIN
                        default_value: 1.0
  --row_segment_island_radius_max ROW_SEGMENT_ISLAND_RADIUS_MAX
                        default_value: 3.0
  --ground_resolution GROUND_RESOLUTION
                        default_value: 0.02
  --ground_elevation_max GROUND_ELEVATION_MAX
                        default_value: 0.2
  --ground_headland GROUND_HEADLAND
                        default_value: 2.0
  --ground_ditch_depth GROUND_DITCH_DEPTH
                        default_value: 0.3
  --plant_spacing_min PLANT_SPACING_MIN
                        default_value: 0.13
  --plant_spacing_max PLANT_SPACING_MAX
                        default_value: 0.19
  --plant_height_min PLANT_HEIGHT_MIN
                        default_value: 0.3
  --plant_height_max PLANT_HEIGHT_MAX
                        default_value: 0.6
  --plant_radius PLANT_RADIUS
                        default_value: 0.3
  --plant_radius_noise PLANT_RADIUS_NOISE
                        default_value: 0.05
  --plant_placement_error_max PLANT_PLACEMENT_ERROR_MAX
                        default_value: 0.02
  --plant_mass PLANT_MASS
                        default_value: 0.3
  --hole_prob [HOLE_PROB [HOLE_PROB ...]]
                        default_value: [0.06, 0.06, 0.04, 0.04, 0.0, 0.0]
  --hole_size_max [HOLE_SIZE_MAX [HOLE_SIZE_MAX ...]]
                        default_value: [7, 5, 5, 3, 0, 0]
  --crop_types [CROP_TYPES [CROP_TYPES ...]]
                        default_value: ['maize_01', 'maize_02']
  --litters LITTERS     default_value: 0
  --litter_types [LITTER_TYPES [LITTER_TYPES ...]]
                        default_value: ['ale', 'beer', 'coke_can',
                        'retro_pepsi_can']
  --weeds WEEDS         default_value: 0
  --weed_types [WEED_TYPES [WEED_TYPES ...]]
                        default_value: ['nettle', 'unknown_weed', 'dandelion']
  --ghost_objects GHOST_OBJECTS
                        default_value: False
  --location_markers LOCATION_MARKERS
                        default_value: False
  --load_from_file LOAD_FROM_FILE
                        default_value: None
  --seed SEED           default_value: -1
  --show_map            Show map after generation.
  ```
</details>

## Sample Worlds
In the [config folder](config/), config files to generate sample worlds are located. The parameters are chosen to match [the task description](https://www.fieldrobot.com/event/index.php/contest/)

Worlds for the Field Robot Event 2022:
| Name | Description |
|:---- |:----------- |
| *fre22_task_navigation* | Task navigation, curved rows that get more difficult (eg. have more and larger holes) to the left |
| *fre22_task_mapping* | Task mapping, field with random holes, bottles and weeds spread throughout the field. The cans, bottles and weeds have no collision box and are static. <br /><sub>This world needs dandelion models which were only distributed among competitors of the Field Robot Event 2022. They are not uploaded to Github because they cannot be open-sourced. If you don't have access to these models, check out the `fre21_task_3` worlds.</sub>|

Worlds for the Field Robot Event 2021:
| Name | Description |
|:---- |:----------- |
| *fre21_task_1* | Task 1, curved rows without holes |
| *fre21_task_2* | Task 2, straight rows with holes |
| *fre21_task_3* | Task 3, similar crop rows as in task_2 but with cans, bottles and weeds spread throughout the field. The cans, bottles and weeds have no collision box and are static. |
| *fre21_task_4* | Task 4, similar crop rows as in task_2 but with cans, bottles and weeds spread throughout the field. The cans, bottles and weeds have a collision box and can be picked up. |

You can use these config files when generating worlds, e.g.:
```commandline
ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
```

Terrain profile can be tuned from YAML or CLI with:

- `ground_row_profile_width`: width of the curved row-shaped ground profile in meters
- `ground_row_ridge_height`: raised bed height under crop rows in meters
- `ground_row_lane_depth`: lane/furrow depth between rows in meters

## Launching and using generated worlds
The launch file to launch the worlds is called `simulation.launch`. You can launch the launch file by running `ros2 launch virtual_maize_field simulation.launch.py`. By default the launch file will launch `generated_world.world`. You can launch any world by using the `world_name` arg. e.g. `ros2 launch virtual_maize_field simulation.launch.py world_name:=simple_row_level_1.world`. The generated world will be saved in `$ROS_HOME/virtual_maize_field` (usually, this will be `~/.ros/virtual_maize_field`).

To add your own robot in the world, use the generated `robot_spawner.launch.py`. This launches your robot at the correct position in the generated world. Your launch file to launch your robot should look like (replace `<<robot_name>>` with your robot name):

```python
from __future__ import annotations

from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource

from virtual_maize_field import get_spawner_launch_file


def generate_launch_description() -> LaunchDescription:
    robot_spawner_launch = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([get_spawner_launch_file()]),
        launch_arguments={"robot_name": "<<robot_name>>"}.items(),
    )

    return LaunchDescription([robot_spawner_launch])
```

Use the function `get_driving_pattern_file()` to get the path of the generated driving pattern and `get_markers_file` to get the path of the generated markers:

```python
from __future__ import annotations

from csv import reader
from pathlib import Path

from virtual_maize_field import get_driving_pattern_file, get_markers_file

def read_driving_pattern() -> None:
    driving_pattern = Path(get_driving_pattern_file()).read_text("utf-8")
    print(f"The driving pattern is {driving_pattern}")

def read_markers_file() -> None:
    with open(get_markers_file(), "r") as f:
        reader = csv.reader(f)

        # Skip header
        next(reader)

        for row in reader:
            print(f"Position {row[2]}: x={float(row[0]):.3f} y={float(row[1]):.3f}")
```

### Textures
| Name | Path | Copyright | License |
|:---- |:---- |:--------- |:------- |
| [grass](https://cc0textures.com/view?id=Ground003) | [`Media/models/materials/textures/`](Media/models/materials/textures/) | 2018 *CC0Textures.com* | [![License: CC0-1.0](https://img.shields.io/badge/License-CC0%201.0-lightgrey.svg)](http://creativecommons.org/publicdomain/zero/1.0/) |

## Docker (Gazebo Harmonic + ROS Humble + ros_gz)

This repository includes a container setup based on:
`ghcr.io/j-rivero/gazebo:harmonic-full`

The image is extended with ROS 2 Humble and `ros_gz` packages.

> Note: use `LOCAL_UID` / `LOCAL_GID` (not `UID`), because `UID` is readonly in bash.

### 1) Build image

```bash
LOCAL_UID=$(id -u) LOCAL_GID=$(id -g) docker compose -f docker-compose.harmonic.yml build
```

### 2) Allow local X11 (GUI only)

```bash
xhost +local:docker
```

### 3) Enter bash in container

```bash
LOCAL_UID=$(id -u) LOCAL_GID=$(id -g) docker compose -f docker-compose.harmonic.yml run --rm gazebo-harmonic bash
```

### 4) Build and run from inside the container

Inside container:

```bash
cd /ws
source /opt/ros/humble/setup.bash

colcon --log-base /ws/log_harmonic build --symlink-install \
  --build-base /ws/build_harmonic \
  --install-base /ws/install_harmonic
source install_harmonic/setup.bash

ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
ros2 launch virtual_maize_field simulation.launch.py
```

Notes:

- If you change files under `src/virtual_maize_field/config` or `src/virtual_maize_field/models`, rerun `ros2 run virtual_maize_field generate_world ...`. A rebuild is not required for those asset/config changes.
- If you change Python package code under `src/virtual_maize_field/virtual_maize_field`, rerun the `colcon build` command before launching again.

Headless launch:

```bash
ros2 launch virtual_maize_field simulation.launch.py headless:=True
```

Generated files are written to `./.ros/virtual_maize_field` in this repository.

### Troubleshooting (GL / texture / drawable errors)

If you see errors like:
- `libGL error: failed to load driver: nouveau`
- `failed to create drawable`

then this is usually GPU/OpenGL passthrough, not world texture files.

1. Make sure X11 access is enabled:
```bash
xhost +local:docker
```

2. Make sure `/dev/dri` exists on host:
```bash
ls -la /dev/dri
```

3. If you use NVIDIA + nvidia-container-toolkit, run container with GPU access.
If your `docker compose run` does not support `--gpus`, use `docker run` directly:
```bash
docker run --rm -it \
  --gpus all \
  --network host \
  --ipc host \
  --user "$(id -u):$(id -g)" \
  -e DISPLAY="$DISPLAY" \
  -e XAUTHORITY=/tmp/.Xauthority \
  -e QT_X11_NO_MITSHM=1 \
  -e ROS_HOME=/ws/.ros \
  -e HOME=/ws \
  -e MPLCONFIGDIR=/ws/.cache/matplotlib \
  -e GZ_SIM_RESOURCE_PATH=/ws/src/virtual_maize_field/models \
  -v "$PWD":/ws \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v "${XAUTHORITY:-$HOME/.Xauthority}:/tmp/.Xauthority:ro" \
  -v /etc/passwd:/etc/passwd:ro \
  -v /etc/group:/etc/group:ro \
  -v /dev/dri:/dev/dri \
  sadek_sim:harmonic-local bash
```

4. If GUI still fails, run headless:
```bash
ros2 launch virtual_maize_field simulation.launch.py headless:=True
```
