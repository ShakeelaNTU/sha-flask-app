# Using latest base image from DockerHub
FROM python:latest

# Creating working directory inside container
WORKDIR /app

# Copy source code into working directory inside container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose container port
EXPOSE 8080

# Start flask app
ENTRYPOINT ["python"]
CMD ["app.py"]
