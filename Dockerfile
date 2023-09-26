# Dockerfile para levantar el archivo JAR care-0.0.1-SNAPSHOT.jar con Java 19
FROM ubuntu:22.04

# Actualiza el sistema e instala las dependencias necesarias
RUN apt-get update && apt-get install -y \
    openjdk-19-jre-headless \
    && rm -rf /var/lib/apt/lists/*

# Crea un directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo JAR a la ubicaci�n de trabajo en el contenedor
COPY care-0.0.1-SNAPSHOT.jar ./app.jar

# Exponer el puerto en el que la aplicaci�n escucha (ajusta el puerto seg�n sea necesario)
EXPOSE 8080

# Comando para ejecutar la aplicaci�n JAR
CMD ["java", "-jar", "app.jar"]
