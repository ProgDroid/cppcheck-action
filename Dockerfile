FROM python:3
RUN apt-get update
RUN apt-get -y install cppcheck

ADD ./src/entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
