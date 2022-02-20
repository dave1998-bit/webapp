FROM python:3.8

ENV PYTHONUNBUFFERED 1
RUN python -m venv venv
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN mkdir /code
WORKDIR /code

COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN pip install scikit-learn
COPY . /code/
