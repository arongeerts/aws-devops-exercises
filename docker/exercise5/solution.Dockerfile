FROM python:3.8

WORKDIR /code
COPY . /code

RUN pip install -r requirements.txt

ENV APP_ENV development

EXPOSE 5000

ENTRYPOINT ["python", "api.py"]