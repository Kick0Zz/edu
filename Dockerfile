# syntax=docker/dockerfile:1
FROM python

RUN git clone https://github.com/anfederico/Flaskex \
    && cd Flaskex \
    && apt install python3-pip -y \
    && pip install -r requirements.txt \
    && python app.py