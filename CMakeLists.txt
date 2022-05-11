# CMake boilerplate: Set your project name here!
project(mqproj)
cmake_minimum_required(VERSION 3.15)

# If the following says Qt5 was not found, it also means
# Qt6 was not found either
find_package(QT NAMES Qt5)
find_package(QT NAMES Qt6)
set(QTWV "Qt${QT_VERSION_MAJOR}")
find_package(${QTWV} COMPONENTS Core REQUIRED)

# Qt boilerplate.
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

# C++ Boilerplate
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

# Define your executables and their dependencies
add_executable(mqproj main.cpp)
target_link_libraries(mqproj PRIVATE ${QTWV}::Core)
