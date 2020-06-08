FROM python:3.8

COPY . /code

ENTRYPOINT ["python", "/code/hello.py"]