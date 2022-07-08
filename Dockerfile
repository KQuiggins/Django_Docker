# Pull base image
FROM python:3.10.4

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set working directory
WORKDIR /code

# Install dependencies
COPY Pipfile Pipfile.lock /code/
RUN python3 -m pip install pipenv && python3 -m pipenv install --system

# Copy project
COPY . /code/