FROM python:3.8-slim-buster

LABEL maintainer="Aran Moncusí Ramírez <aran@digitalpoet.info>"

WORKDIR /app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY app.py .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0" ]
