set(CPACK_DEBIAN_PACKAGE_NAME ros-humble-web-video-server)
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE amd64)
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Gecko Robotics")
set(CPACK_DEBIAN_FILE_NAME DEB-DEFAULT)
set(CPACK_PACKAGING_INSTALL_PREFIX /opt/ros/humble)

set(
    debian_deps_
    ffmpeg
    libavcodec-dev
    libavformat-dev
    libavutil-dev
    libswscale-dev
    ros-humble-async-web-server-cpp
    ros-humble-cv-bridge
    ros-humble-image-transport
    ros-humble-rclcpp
    ros-humble-sensor-msgs
)
list(JOIN debian_deps_ ", " debian_deps_str_)
set(CPACK_DEBIAN_PACKAGE_DEPENDS "${debian_deps_str_}")
