FROM python:3.7

# We copy just the requirements.txt first to leverage Docker cache
COPY ./pyproject.toml /app/pyproject.toml

WORKDIR /app
ENV PYTHONPATH=${PYTHONPATH}:${PWD}

COPY . /app

RUN pip3 install poetry
RUN poetry config virtualenvs.create false
RUN poetry install --no-dev

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]