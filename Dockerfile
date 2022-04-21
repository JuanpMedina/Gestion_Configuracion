FROM python:3.8-alpine

WORKDIR /myproject

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY myapp.py .

EXPOSE 8000
CMD ["python","./myapp.py"]
