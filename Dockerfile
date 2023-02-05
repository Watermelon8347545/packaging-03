FROM alpine:latest
RUN echo "printing from inside dockerfile"

# copy & execute a bash file
COPY my_bash.sh /
RUN chmod +x /my_bash.sh
CMD /my_bash.sh

# copy & execute a python file
#COPY my_python.py /
#CMD ["python", "./my_python.py"]
