FROM python:3.8

WORKDIR /code
COPY . /code

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python", "api.py"]