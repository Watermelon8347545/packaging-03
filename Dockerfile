FROM python:latest
RUN echo "printing from inside dockerfile"
COPY main.py /main.py
CMD ["python", "./main.py"]
