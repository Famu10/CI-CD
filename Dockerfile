# Utiliza la imagen base de Python 3.11.4
FROM python:3.11.4

# Establece el directorio de trabajo en /usr/src/app
WORKDIR /usr/src/app

# Copia el archivo de requisitos y lo instala en el contenedor
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos al directorio de trabajo del contenedor
COPY . .

# Expone el puerto 5000 para que Flask pueda escuchar las solicitudes
EXPOSE 5000

# Ejecuta la aplicación Flask cuando se inicia el contenedor
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]