
Minimal Qt Project
==================

This project is a good starting point for modern Qt projects.

Either use the included Makefile or build the project yourself
using the following minimal 4-line script.

```sh
mkdir build
cd build
cmake ..
cmake --build .
```

The Makefile uses ninja in order to get a consistent build
environment, which is supported on all major Desktop operating
systems whereas the above 4-liner uses the platform defaults
for each build host.
