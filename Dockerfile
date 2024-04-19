FROM python:3.12-slim

ADD . .

CMD python manage.py