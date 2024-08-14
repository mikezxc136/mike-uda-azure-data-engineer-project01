FROM python:3.10

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip
RUN pip install cassandra-driver jupyter

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
