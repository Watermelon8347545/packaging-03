FROM python:latest
RUN echo "printing from inside dockerfile"

# copy all files from pwd of repository to docker image root
COPY . /

# make the bash file executable
RUN chmod +x /my_bash.sh

# execute the bash file
RUN
  bash /my_bash.sh
  python /my_python.py
