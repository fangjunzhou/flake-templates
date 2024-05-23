cmake_minimum_required(VERSION 3.29.2)

project(project_name VERSION 0.1.0)

# Enable compile_commands.json
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
# Project binary and library output directory.
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/lib
    CACHE STRING "Library Output" FORCE)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY
    ${CMAKE_BINARY_DIR}/bin
    CACHE STRING "Binary Output" FORCE)

# Optimization level.
set(CMAKE_CXX_FLAGS_DEBUG "-g -Og")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Dependencies.
find_package(spdlog REQUIRED)

# Build main project.
add_subdirectory(./src)
