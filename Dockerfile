# 1️⃣ Базовый образ Python 3.12
FROM python:3.12-slim

# 2️⃣ Создаём рабочую директорию внутри контейнера
WORKDIR /app

# 3️⃣ Копируем файл с зависимостями
COPY requirements.txt .

# 4️⃣ Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# 5️⃣ Копируем все остальные файлы проекта в контейнер
COPY . .

# 6️⃣ Открываем порт, который будет использовать Flask
EXPOSE 5000

# 7️⃣ Команда для запуска приложения
CMD ["python", "app.py"]
