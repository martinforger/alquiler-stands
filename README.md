# Proyecto BI - Alquiler de Stands 🚀

Este proyecto utiliza **Docker** para garantizar que todos trabajemos con la misma base de datos y los mismos datos de prueba.

## 📋 Requisitos Previos

Es necesario tener instalado:

- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- Git

## 🛠️ Configuración Inicial

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/martinforger/alquiler-stands
   cd alquiler-stands
   ```
2. **Levantar el contenedor:** Ejecuta el siguiente comando en la terminal:

   ```bash
   docker-compose up -d
   ```

3. **Conexión a la Base de Datos:** Usa tu cliente favorito (DBeaver, DataGrip, pgAdmin) con los siguientes datos:

   - Host: localhost
   - Puerto: 5431
   - Usuario: postgres
   - Contraseña: 1234
   - Base de Datos: alquiler_db

## 📂 Estructura de Archivos SQL

Los scripts dentro de la carpeta `/sql` se ejecutan automáticamente en orden alfabético:

- `01-relacional.sql`: Creación del modelo relacional.
- `02-dimensional.sql`: Creación del modelo dimensional.
- `03-data.sql`: Carga masiva de datos.

  > **Nota:** Si realizas cambios en los archivos SQL y quieres que se reflejen de cero, debes ejecutar: `docker-compose down -v` y luego `docker-compose up -d`.
