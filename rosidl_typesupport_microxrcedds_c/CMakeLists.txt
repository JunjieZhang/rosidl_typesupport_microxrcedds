cmake_minimum_required(VERSION 3.5)

project(rosidl_typesupport_microxrcedds_c)

set(microxrcedds_STATIC_DISABLE $ENV{microxrcedds_STATIC_DISABLE}
  CACHE BOOL "If Micro XRCE-DDS Static should be disabled.")

# Default to C99
if(NOT CMAKE_C_STANDARD)
  set(CMAKE_C_STANDARD 99)
endif()

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)

find_package(rosidl_typesupport_microxrcedds_shared REQUIRED CONFIG)
find_package(microxrcedds_cmake_module REQUIRED)
find_package(MicroXRCEDDS REQUIRED MODULE)

find_package(ament_cmake_python REQUIRED)

ament_export_dependencies(rosidl_typesupport_microxrcedds_shared)
ament_export_dependencies(rosidl_cmake)
ament_export_dependencies(rosidl_generator_c)
ament_export_dependencies(microcdr)

ament_export_include_directories(include)

ament_python_install_package(${PROJECT_NAME})

add_library(${PROJECT_NAME} src/identifier.c src/deserialize_buffer_utility.c)

ament_target_dependencies(
  ${PROJECT_NAME}
  rosidl_typesupport_microxrcedds_shared
)

if(WIN32)
  target_compile_definitions(${PROJECT_NAME}
    PRIVATE "ROSIDL_TYPESUPPORT_MICROXRCEDDS_C_BUILDING_DLL")
endif()
target_include_directories(${PROJECT_NAME}
  PUBLIC
  include
)
ament_export_libraries(${PROJECT_NAME})

ament_index_register_resource("rosidl_typesupport_c")

if(BUILD_TESTING)
    find_package(ament_lint_auto REQUIRED)
    ament_lint_auto_find_test_dependencies()
endif()

ament_package(
  CONFIG_EXTRAS "rosidl_typesupport_microxrcedds_c-extras.cmake.in"
)

install(
  PROGRAMS bin/rosidl_typesupport_microxrcedds_c
  DESTINATION lib/rosidl_typesupport_microxrcedds_c
)

install(
  DIRECTORY cmake resource
  DESTINATION share/${PROJECT_NAME}
)

install(
  DIRECTORY include/
  DESTINATION include
)

install(
  TARGETS ${PROJECT_NAME}
  ARCHIVE DESTINATION lib
  LIBRARY DESTINATION lib
  RUNTIME DESTINATION bin
)
