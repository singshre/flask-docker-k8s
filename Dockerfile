FROM python:3.13
WORKDIR /app

# Install the application dependencies
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt

# Copy in the source code
COPY . .

# Setup an app user so the container doesn't run as the root user

CMD ["python", "app.py"]