# Use an official Python runtime as the base image
FROM python:3.9

# My directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install nltk through the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Copy main.py and random_paragraphs.txt into the container
COPY main.py .
COPY random_paragraphs.txt .

# run my python file when the container starts
CMD ["python", "main.py"]
