FROM python:3.7-alpine
LABEL Elmehdi Aitbrahim
ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /appCOPY ./app /app

RUN adduser -D user
USER user


