# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM python:3.9-slim

# Allow statements and log messages to immediately appear in the Knative logs
ENV PYTHONUNBUFFERED True

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Install production dependencies.
RUN pip install --upgrade pip & pip install poetry
RUN poetry config virtualenvs.in-project true
RUN poetry install --no-dev

# Run the web service on container startup.
CMD poetry run uvicorn main:app --host 0.0.0.0 --port $PORT
