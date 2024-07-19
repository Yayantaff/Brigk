# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "swarm_control_package: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iswarm_control_package:/home/grsh/catkin_ws05/src/swarm_control_package/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Ifiducial_msgs:/home/grsh/catkin_ws05/src/fiducials/fiducial_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(swarm_control_package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" NAME_WE)
add_custom_target(_swarm_control_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_control_package" "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" "geometry_msgs/Vector3:geometry_msgs/Transform:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" NAME_WE)
add_custom_target(_swarm_control_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_control_package" "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" "geometry_msgs/Transform:geometry_msgs/Vector3:std_msgs/Header:swarm_control_package/FiducialTransform:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" NAME_WE)
add_custom_target(_swarm_control_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "swarm_control_package" "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_control_package
)
_generate_msg_cpp(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_control_package
)

### Generating Services
_generate_srv_cpp(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_control_package
)

### Generating Module File
_generate_module_cpp(swarm_control_package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_control_package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(swarm_control_package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(swarm_control_package_generate_messages swarm_control_package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_cpp _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_cpp _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_cpp _swarm_control_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_control_package_gencpp)
add_dependencies(swarm_control_package_gencpp swarm_control_package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_control_package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_control_package
)
_generate_msg_eus(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_control_package
)

### Generating Services
_generate_srv_eus(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_control_package
)

### Generating Module File
_generate_module_eus(swarm_control_package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_control_package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(swarm_control_package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(swarm_control_package_generate_messages swarm_control_package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_eus _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_eus _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_eus _swarm_control_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_control_package_geneus)
add_dependencies(swarm_control_package_geneus swarm_control_package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_control_package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_control_package
)
_generate_msg_lisp(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_control_package
)

### Generating Services
_generate_srv_lisp(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_control_package
)

### Generating Module File
_generate_module_lisp(swarm_control_package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_control_package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(swarm_control_package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(swarm_control_package_generate_messages swarm_control_package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_lisp _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_lisp _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_lisp _swarm_control_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_control_package_genlisp)
add_dependencies(swarm_control_package_genlisp swarm_control_package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_control_package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_control_package
)
_generate_msg_nodejs(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_control_package
)

### Generating Services
_generate_srv_nodejs(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_control_package
)

### Generating Module File
_generate_module_nodejs(swarm_control_package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_control_package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(swarm_control_package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(swarm_control_package_generate_messages swarm_control_package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_nodejs _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_nodejs _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_nodejs _swarm_control_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_control_package_gennodejs)
add_dependencies(swarm_control_package_gennodejs swarm_control_package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_control_package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package
)
_generate_msg_py(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package
)

### Generating Services
_generate_srv_py(swarm_control_package
  "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package
)

### Generating Module File
_generate_module_py(swarm_control_package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(swarm_control_package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(swarm_control_package_generate_messages swarm_control_package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransform.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_py _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/msg/FiducialTransformArray.msg" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_py _swarm_control_package_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/grsh/catkin_ws05/src/swarm_control_package/srv/NewTarget.srv" NAME_WE)
add_dependencies(swarm_control_package_generate_messages_py _swarm_control_package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(swarm_control_package_genpy)
add_dependencies(swarm_control_package_genpy swarm_control_package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS swarm_control_package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_control_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/swarm_control_package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(swarm_control_package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(swarm_control_package_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET fiducial_msgs_generate_messages_cpp)
  add_dependencies(swarm_control_package_generate_messages_cpp fiducial_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_control_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/swarm_control_package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(swarm_control_package_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(swarm_control_package_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET fiducial_msgs_generate_messages_eus)
  add_dependencies(swarm_control_package_generate_messages_eus fiducial_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_control_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/swarm_control_package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(swarm_control_package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(swarm_control_package_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET fiducial_msgs_generate_messages_lisp)
  add_dependencies(swarm_control_package_generate_messages_lisp fiducial_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_control_package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/swarm_control_package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(swarm_control_package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(swarm_control_package_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET fiducial_msgs_generate_messages_nodejs)
  add_dependencies(swarm_control_package_generate_messages_nodejs fiducial_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/swarm_control_package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(swarm_control_package_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(swarm_control_package_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET fiducial_msgs_generate_messages_py)
  add_dependencies(swarm_control_package_generate_messages_py fiducial_msgs_generate_messages_py)
endif()
