FROM python:latest

ENV POETRY_VERSION=1.2.1 \
  POETRY_NO_INTERACTION=1 \
  POETRY_VIRTUALENVS_CREATE=false \
  POETRY_CACHE_DIR='/var/cache/pypoetry' \
  POETRY_HOME='/usr/local'

RUN pip install "poetry==$POETRY_VERSION"

RUN mkdir /app

WORKDIR /app

ADD . /app

#RUN git clone git@github.com:JEndler/legaltech-hackathon.git

#WORKDIR /legaltech-hackathon

RUN poetry install --only main

CMD ["poetry", "run", "python3", "frontend.py"]