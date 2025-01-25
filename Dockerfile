FROM python:3.13
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN pip install pytest
COPY . .
CMD ["pytest"]
