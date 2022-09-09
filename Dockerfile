FROM python:3.7

COPY . /add
WORKDIR /app
# We copy just the requirements.txt first to leverage Docker cache

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt


EXPOSE 5000

CMD ["python", "app.py" ]

