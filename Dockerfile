# Use the official Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /code

# Copy the requirements file to the working directory
COPY requirements.txt /code/requirements.txt

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the application code to the working directory
COPY ./src /code/src

# Expose the port on which the application will run
EXPOSE 8000

# Run the FastAPI application using uvicorn server
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]