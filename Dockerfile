# Використовуємо офіційний образ Python
FROM python:3.10-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файл залежностей
COPY requirements.txt .

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо решту файлів застосунку
COPY . .

# Вказуємо команду для запуску застосунку
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
