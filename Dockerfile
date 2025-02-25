FROM python:3.13

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y python3-distutils python3-pip

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --upgrade pip setuptools
RUN pip install -r requirements.txt

# Copy project files
COPY . .

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
