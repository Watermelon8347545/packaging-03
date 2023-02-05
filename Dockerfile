FROM python:latest
RUN echo "printing from inside dockerfile"

# copy all files from pwd of repository to docker image root
COPY . /

# make the bash file executable
RUN chmod +x /my_bash.sh &&\
    /my_bash.sh

RUN python -m pip install --upgrade pip &&\
    python -m pip install --upgrade setuptools &&\
    python /my_python.py
