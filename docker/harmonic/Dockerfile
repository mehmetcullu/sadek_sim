FROM ghcr.io/j-rivero/gazebo:harmonic-full

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-lc"]

ENV ROS_DISTRO=humble
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV QT_X11_NO_MITSHM=1

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gnupg2 \
    lsb-release \
  && curl -fsSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key \
    | gpg --dearmor -o /usr/share/keyrings/ros-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" \
    > /etc/apt/sources.list.d/ros2.list \
  && apt-get update && apt-get install -y --no-install-recommends \
    python3-colcon-common-extensions \
    python3-jinja2 \
    python3-matplotlib \
    python3-numpy \
    python3-opencv \
    python3-packaging \
    python3-pip \
    python3-rosdep \
    python3-rospkg \
    python3-shapely \
    python3-vcstool \
    python3-yaml \
    ros-humble-ros-base \
    ros-humble-ros2launch \
    ros-humble-ros-gz \
    ros-humble-ros-gz-bridge \
    ros-humble-ros-gz-sim \
  && rosdep init || true \
  && rm -rf /var/lib/apt/lists/*

COPY docker/harmonic/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /ws
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
