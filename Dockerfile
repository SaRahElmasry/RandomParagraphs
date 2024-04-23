FROM python:3.9

# My directory in the container
WORKDIR /app

# Copy the requirements.txt file into the Container's "app" Directory
COPY requirements.txt /app

# To Install nltk through the requirements.txt file
RUN pip install --no-cache-dir -r requirements.txt

# Copy main.py and random_paragraphs.txt into the Container's "app" Directory
COPY main.py /app
COPY random_paragraphs.txt /app

# run my python file when the container starts
CMD ["python", "main.py"]
