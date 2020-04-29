FROM python:3.8.2-alpine3.11

RUN apk add --no-cache less

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install -r requirements.txt

ARG AppName

COPY ./$AppName ./$AppName

CMD gunicorn --workers=10 -b :8000 $AppName.app

