FROM python:3
RUN apt-get update
RUN apt-get -y install cppcheck

RUN cppcheck ./src -I./include --error-exitcode=1 --enable=all -i./ext -i./stk-4.6.0 -i./src/glad.c --inconclusive --language=c++
RUN if [ "$?" = "1" ]; then exit 1 ; fi
