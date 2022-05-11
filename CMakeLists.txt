# CMake boilerplate: Set your project name here!
project(mqproj)
cmake_minimum_required(VERSION 3.15)

if (CMAKE_SYSTEM_NAME STREQUAL "Linux")
    set(LINUX TRUE)
endif()

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

# Linux boilerplate
if (LINUX)
    set(THREADS_PREFER_PTHREAD_FLAG ON)

    # Linking explicitly with system libraries is sometimes needed.
    # Disable the following to see whether linking succeeds. If it does,
    # remove these four lines -- you don't need them.
    find_package(ICU COMPONENTS uc i18n dt REQUIRED)
    target_link_libraries(mqproj PRIVATE ICU::uc ICU::i18n ICU::dt)

    find_package(Threads REQUIRED)
    target_link_libraries(mqproj PRIVATE Threads::Threads)
endif()

