# this makefile is not really required and is here only for illustrative purposes

.PHONY: all build-debug build-release configure-debug configure-release

all: build-debug build-release

build-debug/CMakeCache.txt: CMakeLists.txt
	mkdir build-debug; cd build-debug; cmake .. -GNinja -DCMAKE_BUILD_TYPE=Debug

build-release/CMakeCache.txt: CMakeLists.txt
	mkdir build-release; cd build-release; cmake .. -GNinja -DCMAKE_BUILD_TYPE=Release

configure-debug: build-debug/CMakeCache.txt

configure-release: build-release/CMakeCache.txt

build-release: configure-release
	ninja -C build-release

build-debug: configure-debug
	ninja -C build-debug
