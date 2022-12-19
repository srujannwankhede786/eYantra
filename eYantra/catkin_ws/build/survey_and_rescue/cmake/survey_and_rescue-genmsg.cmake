# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "survey_and_rescue: 3 messages, 0 services")

set(MSG_I_FLAGS "-Isurvey_and_rescue:/home/itachi/catkin_ws/src/survey_and_rescue/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(survey_and_rescue_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" NAME_WE)
add_custom_target(_survey_and_rescue_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "survey_and_rescue" "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" ""
)

get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" NAME_WE)
add_custom_target(_survey_and_rescue_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "survey_and_rescue" "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" "survey_and_rescue/SRBeaconStats"
)

get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" NAME_WE)
add_custom_target(_survey_and_rescue_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "survey_and_rescue" "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_cpp(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg"
  "${MSG_I_FLAGS}"
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_cpp(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/survey_and_rescue
)

### Generating Services

### Generating Module File
_generate_module_cpp(survey_and_rescue
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/survey_and_rescue
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(survey_and_rescue_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(survey_and_rescue_generate_messages survey_and_rescue_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_cpp _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_cpp _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_cpp _survey_and_rescue_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(survey_and_rescue_gencpp)
add_dependencies(survey_and_rescue_gencpp survey_and_rescue_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS survey_and_rescue_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_eus(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg"
  "${MSG_I_FLAGS}"
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_eus(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/survey_and_rescue
)

### Generating Services

### Generating Module File
_generate_module_eus(survey_and_rescue
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/survey_and_rescue
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(survey_and_rescue_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(survey_and_rescue_generate_messages survey_and_rescue_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_eus _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_eus _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_eus _survey_and_rescue_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(survey_and_rescue_geneus)
add_dependencies(survey_and_rescue_geneus survey_and_rescue_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS survey_and_rescue_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_lisp(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg"
  "${MSG_I_FLAGS}"
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_lisp(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/survey_and_rescue
)

### Generating Services

### Generating Module File
_generate_module_lisp(survey_and_rescue
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/survey_and_rescue
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(survey_and_rescue_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(survey_and_rescue_generate_messages survey_and_rescue_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_lisp _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_lisp _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_lisp _survey_and_rescue_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(survey_and_rescue_genlisp)
add_dependencies(survey_and_rescue_genlisp survey_and_rescue_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS survey_and_rescue_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_nodejs(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg"
  "${MSG_I_FLAGS}"
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_nodejs(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/survey_and_rescue
)

### Generating Services

### Generating Module File
_generate_module_nodejs(survey_and_rescue
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/survey_and_rescue
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(survey_and_rescue_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(survey_and_rescue_generate_messages survey_and_rescue_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_nodejs _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_nodejs _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_nodejs _survey_and_rescue_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(survey_and_rescue_gennodejs)
add_dependencies(survey_and_rescue_gennodejs survey_and_rescue_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS survey_and_rescue_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_py(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg"
  "${MSG_I_FLAGS}"
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue
)
_generate_msg_py(survey_and_rescue
  "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue
)

### Generating Services

### Generating Module File
_generate_module_py(survey_and_rescue
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(survey_and_rescue_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(survey_and_rescue_generate_messages survey_and_rescue_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRinfo.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_py _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRDroneStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_py _survey_and_rescue_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/survey_and_rescue/msg/SRBeaconStats.msg" NAME_WE)
add_dependencies(survey_and_rescue_generate_messages_py _survey_and_rescue_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(survey_and_rescue_genpy)
add_dependencies(survey_and_rescue_genpy survey_and_rescue_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS survey_and_rescue_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/survey_and_rescue)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/survey_and_rescue
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(survey_and_rescue_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/survey_and_rescue)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/survey_and_rescue
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(survey_and_rescue_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/survey_and_rescue)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/survey_and_rescue
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(survey_and_rescue_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/survey_and_rescue)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/survey_and_rescue
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(survey_and_rescue_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/survey_and_rescue
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(survey_and_rescue_generate_messages_py std_msgs_generate_messages_py)
endif()
