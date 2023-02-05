FROM python:latest
RUN echo "printing from inside dockerfile"

# copy a bash file
COPY my_bash.sh /

# make the bash file executable
RUN chmod +x /my_bash.sh

# execute the bash file
CMD /my_bash.sh

# copy & execute a python file
COPY my_python.py /
CMD ["python", "./my_python.py"]
