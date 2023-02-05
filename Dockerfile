FROM python:latest
RUN echo "printing from inside dockerfile"

# copy & execute a bash file
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

# copy & execute a python file
COPY main.py /
CMD ["python", "./main.py"]
