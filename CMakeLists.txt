project(mqproj)
cmake_minimum_required(VERSION 3.15)

find_package(QT NAMES Qt5)
find_package(QT NAMES Qt6)
set(QTWV "Qt${QT_VERSION_MAJOR}")
find_package(${QTWV} COMPONENTS Core REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)

add_executable(mqproj main.cpp)
target_link_libraries(mqproj PRIVATE ${QTWV}::Core)
