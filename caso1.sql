-- Creando base de datos

CREATE DATABASE caso1;
\c caso1

-- Creando tablas

CREATE TABLE departamentos(
id SERIAL,
nombre VARCHAR(30) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE trabajadores(
rut VARCHAR(12) NOT NULL UNIQUE,
nombre VARCHAR(40) NOT NULL,
direccion VARCHAR(60) NOT NULL,
departamento_id INT NOT NULL,
PRIMARY KEY (rut),
FOREIGN KEY (departamento_id) REFERENCES
departamentos(id));

CREATE TABLE liquidaciones(
id SERIAL,
monto INT NOT NULL,
trabajador_rut VARCHAR(12) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (trabajador_rut) REFERENCES
trabajadores(rut));

CREATE TABLE archivos(
id SERIAL,
nombre VARCHAR(30) NOT NULL,
liquidacion_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (liquidacion_id) REFERENCES
liquidaciones(id));
