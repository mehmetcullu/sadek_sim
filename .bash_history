cd /ws
source /opt/ros/humble/setup.bash
colcon --log-base /ws/log_harmonic build --symlink-install   --build-base /ws/build_harmonic   --install-base /ws/install_harmonic
source install_harmonic/setup.bash
ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
ros2 launch virtual_maize_field simulation.launch.py
LOCAL_UID=$(id -u) LOCAL_GID=$(id -g) docker compose -f docker-compose.harmonic.yml run --rm gazebo-harmonic bash
clear
ls -la /dev/dri
exit
cd /ws
source /opt/ros/humble/setup.bash
colcon --log-base /ws/log_harmonic build --symlink-install --build-base /ws/build_harmonic --install-base /ws/install_harmonic
source /ws/install_harmonic/setup.bash
ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
ros2 launch virtual_maize_field simulation.launch.py
clear
ros2 run virtual_maize_field generate_world fre21_task_4
ros2 run virtual_maize_field generate_world fre21_task_4
ros2 launch virtual_maize_field simulation.launch.py
ros2 run virtual_maize_field generate_world fre21_task_1
ros2 launch virtual_maize_field simulation.launch.py
clear
ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
ros2 launch virtual_maize_field simulation.launch.py
clear
ros2 run virtual_maize_field generate_world fre22_task_mapping
clear
ros2 run virtual_maize_field generate_world fre22_task_mapping_fast
ros2 run virtual_maize_field generate_world fre22_task_mapping
ros2 run virtual_maize_field generate_world fre22_task_navigation
ros2 launch virtual_maize_field simulation.launch.py
clear
exit
cd /ws
source /opt/ros/humble/setup.bash
colcon --log-base /ws/log_harmonic build --symlink-install   --build-base /ws/build_harmonic   --install-base /ws/install_harmonic
source install_harmonic/setup.bash
ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
ros2 launch virtual_maize_field simulation.launch.py
ros2 run virtual_maize_field generate_world fre22_task_navigation_mini
ros2 launch virtual_maize_field simulation.launch.py
