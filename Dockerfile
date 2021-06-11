# syntax=docker/dockerfile:1
FROM python

RUN pip install Flask
RUN pip install WTForms
RUN pip install SQLAlchemy
RUN pip install bcrypt
RUN pip install requests
RUN pip install flask-heroku
RUN pip install gunicorn
RUN git clone https://github.com/anfederico/Flaskex
RUN python Flaskex/app.py
