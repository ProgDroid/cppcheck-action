#!/bin/bash
cppcheck ./src -I./include --error-exitcode=1 --enable=all -i./ext -i./stk-4.6.0 -i./src/glad.c --inconclusive --language=c++
if [ "$?" = "1" ]; then exit 1 ; fi
