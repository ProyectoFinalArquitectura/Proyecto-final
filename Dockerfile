# Usar imagen base de Python
FROM python:3.12-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos de dependencias
COPY pyproject.toml .

# Instalar pip y dependencias
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir .

# Copiar el código fuente
COPY . .

# Puerto expuesto (Flask por defecto usa 5000)
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "main.py"]
