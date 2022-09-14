FROM python:3.7

# set up the working directory
WORKDIR /app

# copy the file to the docker image
COPY server.py /app

# installing the dependency
RUN pip3 install flask

# expose the conatiner on port 5000
EXPOSE 5000

ENTRYPOINT ["python"]
CMD ["server.py"]
