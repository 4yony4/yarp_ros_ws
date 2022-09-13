# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yarp: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iyarp:/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yarp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" NAME_WE)
add_custom_target(_yarp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yarp" "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yarp
  "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yarp
)

### Generating Services

### Generating Module File
_generate_module_cpp(yarp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yarp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yarp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yarp_generate_messages yarp_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" NAME_WE)
add_dependencies(yarp_generate_messages_cpp _yarp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yarp_gencpp)
add_dependencies(yarp_gencpp yarp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yarp_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yarp
  "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yarp
)

### Generating Services

### Generating Module File
_generate_module_eus(yarp
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yarp
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yarp_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yarp_generate_messages yarp_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" NAME_WE)
add_dependencies(yarp_generate_messages_eus _yarp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yarp_geneus)
add_dependencies(yarp_geneus yarp_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yarp_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yarp
  "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yarp
)

### Generating Services

### Generating Module File
_generate_module_lisp(yarp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yarp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yarp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yarp_generate_messages yarp_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" NAME_WE)
add_dependencies(yarp_generate_messages_lisp _yarp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yarp_genlisp)
add_dependencies(yarp_genlisp yarp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yarp_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yarp
  "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yarp
)

### Generating Services

### Generating Module File
_generate_module_nodejs(yarp
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yarp
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yarp_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yarp_generate_messages yarp_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" NAME_WE)
add_dependencies(yarp_generate_messages_nodejs _yarp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yarp_gennodejs)
add_dependencies(yarp_gennodejs yarp_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yarp_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yarp
  "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yarp
)

### Generating Services

### Generating Module File
_generate_module_py(yarp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yarp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yarp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yarp_generate_messages yarp_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jbarmagen/Dev/ROS/yarp_ros_ws/src/yarp/msg/Yarpinfo.msg" NAME_WE)
add_dependencies(yarp_generate_messages_py _yarp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yarp_genpy)
add_dependencies(yarp_genpy yarp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yarp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yarp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yarp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yarp_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yarp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yarp
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yarp_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yarp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yarp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yarp_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yarp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yarp
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yarp_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yarp)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yarp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yarp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yarp_generate_messages_py std_msgs_generate_messages_py)
endif()
