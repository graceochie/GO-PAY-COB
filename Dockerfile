# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app
RUN pip install --upgrade pip 

# Copy the application code to the Docker image
COPY . /app

RUN cd /app/gopaycob
# RUN python -m venv gopay
# RUN . gopay/bin/activate
# RUN pip install django && pip show django

RUN python -m venv gopay && \
    . gopay/bin/activate
RUN pip install django

# Expose the port that the Django app runs on
EXPOSE 8000

# Command to run the Django application
CMD ["python", "/app/gopaycob/manage.py", "runserver", "0.0.0.0:8000"]