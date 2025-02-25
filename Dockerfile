FROM python:3.13

WORKDIR /app

# Install required system dependencies
RUN apt-get update && apt-get install -y python3-distutils python3-pip

# Upgrade pip and install Django manually
RUN pip install --upgrade pip setuptools
RUN pip install django

# Copy project files
COPY . .

# Run migrations and start the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
