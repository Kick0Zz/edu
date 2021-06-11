# Базовый образ с которого мы начнём создание своего собственного образа
FROM ubuntu:18.04

# Задаём переменные среды окружения
WORKDIR /usr/share/nginx/html

# не вызовет в ошибку в отличии от примера example-3
# из-за наличия флага -y который автоматически 
# подтвердит действие
RUN apt-get update \
    && apt-get install git -y \
    && git clone https://github.com/anfederico/Flaskex \
    && cd Flaskex \
    && apt install python3-pip -y \
    && pip install -r requirements.txt \
    && python app.py