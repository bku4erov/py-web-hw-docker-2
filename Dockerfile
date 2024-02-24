FROM python:3.12-slim

# установить рабочую директорию 
WORKDIR /app

# скопировать зависимости проекта
COPY ./requirements.txt .

# установить зависимости для проекта
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# установить рабочую директорию 
WORKDIR /app

# скопировать файлы проекта Django в docker-образ
COPY . .

EXPOSE 8000

# запустить приложение Django с использованием встроенного веб-сервера
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]