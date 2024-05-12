FROM python:3.10

RUN mkdir /django_app

WORKDIR /django_app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD gunicorn --bind 0.0.0.0:8000 --workers 2  rwp_site.wsgi

