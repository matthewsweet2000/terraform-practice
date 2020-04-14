FROM python:3.7.7-slim-buster

COPY ./requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY NIAC NIAC

CMD ["python", "-m", "heat.report_1.src.run"]