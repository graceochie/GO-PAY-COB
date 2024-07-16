# Use the official Python image from the Docker Hub
FROM python:3.9-slim

<<<<<<< HEAD
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
=======
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies
COPY requirements.txt /app/
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# Copy the application code to the Docker image
COPY . /app/

# Collect static files
RUN python manage.py collectstatic --noinput

# Run database migrations
RUN python manage.py migrate
>>>>>>> c8e48a36ab9f465234ed706ab40b2bbc02272157

# Expose the port that the Django app runs on
EXPOSE 8000

# Command to run the Django application
<<<<<<< HEAD
CMD ["python", "/app/gopaycob/manage.py", "runserver", "0.0.0.0:8000"]
=======
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "gopaycob.wsgi:application"]
>>>>>>> c8e48a36ab9f465234ed706ab40b2bbc02272157
