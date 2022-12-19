# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "edrone_client: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iedrone_client:/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(edrone_client_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" NAME_WE)
add_custom_target(_edrone_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "edrone_client" "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" ""
)

get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" NAME_WE)
add_custom_target(_edrone_client_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "edrone_client" "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edrone_client
)

### Generating Services
_generate_srv_cpp(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edrone_client
)

### Generating Module File
_generate_module_cpp(edrone_client
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edrone_client
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(edrone_client_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(edrone_client_generate_messages edrone_client_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" NAME_WE)
add_dependencies(edrone_client_generate_messages_cpp _edrone_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" NAME_WE)
add_dependencies(edrone_client_generate_messages_cpp _edrone_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edrone_client_gencpp)
add_dependencies(edrone_client_gencpp edrone_client_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edrone_client_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edrone_client
)

### Generating Services
_generate_srv_eus(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edrone_client
)

### Generating Module File
_generate_module_eus(edrone_client
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edrone_client
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(edrone_client_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(edrone_client_generate_messages edrone_client_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" NAME_WE)
add_dependencies(edrone_client_generate_messages_eus _edrone_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" NAME_WE)
add_dependencies(edrone_client_generate_messages_eus _edrone_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edrone_client_geneus)
add_dependencies(edrone_client_geneus edrone_client_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edrone_client_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edrone_client
)

### Generating Services
_generate_srv_lisp(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edrone_client
)

### Generating Module File
_generate_module_lisp(edrone_client
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edrone_client
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(edrone_client_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(edrone_client_generate_messages edrone_client_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" NAME_WE)
add_dependencies(edrone_client_generate_messages_lisp _edrone_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" NAME_WE)
add_dependencies(edrone_client_generate_messages_lisp _edrone_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edrone_client_genlisp)
add_dependencies(edrone_client_genlisp edrone_client_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edrone_client_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edrone_client
)

### Generating Services
_generate_srv_nodejs(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edrone_client
)

### Generating Module File
_generate_module_nodejs(edrone_client
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edrone_client
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(edrone_client_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(edrone_client_generate_messages edrone_client_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" NAME_WE)
add_dependencies(edrone_client_generate_messages_nodejs _edrone_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" NAME_WE)
add_dependencies(edrone_client_generate_messages_nodejs _edrone_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edrone_client_gennodejs)
add_dependencies(edrone_client_gennodejs edrone_client_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edrone_client_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edrone_client
)

### Generating Services
_generate_srv_py(edrone_client
  "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edrone_client
)

### Generating Module File
_generate_module_py(edrone_client
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edrone_client
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(edrone_client_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(edrone_client_generate_messages edrone_client_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/msg/edrone_msgs.msg" NAME_WE)
add_dependencies(edrone_client_generate_messages_py _edrone_client_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/itachi/catkin_ws/src/eyantra_drone/edrone_client/srv/edrone_services.srv" NAME_WE)
add_dependencies(edrone_client_generate_messages_py _edrone_client_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(edrone_client_genpy)
add_dependencies(edrone_client_genpy edrone_client_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS edrone_client_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edrone_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/edrone_client
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(edrone_client_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edrone_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/edrone_client
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(edrone_client_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edrone_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/edrone_client
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(edrone_client_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edrone_client)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/edrone_client
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(edrone_client_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edrone_client)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edrone_client\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/edrone_client
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(edrone_client_generate_messages_py std_msgs_generate_messages_py)
endif()
