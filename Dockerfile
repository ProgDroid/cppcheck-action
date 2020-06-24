FROM python:3
RUN apt-get update
RUN apt-get -y install cppcheck

ADD ./src/entrypoint.py /entrypoint.py
ENTRYPOINT ["python", "/entrypoint.py"]
RUN if [ "$?" = "1" ]; then exit 1 ; fi
