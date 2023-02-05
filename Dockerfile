FROM python:latest
RUN echo "printing from inside dockerfile"

# copy all files from pwd of repository to docker image root
COPY . /

# make the bash file executable
RUN chmod +x /my_bash.sh

# execute the bash file
RUN /my_bash.sh
RUN python /my_python.py
