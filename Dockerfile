# Imagem base com Python
FROM python:3.11-slim

# Define diretório de trabalho
WORKDIR /app

# Copia arquivos do projeto
COPY requirements.txt .
COPY main.py .

# Instala dependências
RUN pip install --no-cache-dir -r requirements.txt

# Expõe a porta
EXPOSE 8000

# Comando para rodar o servidor
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
