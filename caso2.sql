-- Creando base de datos

CREATE DATABASE caso2;
\c caso2

-- Creando tablas

CREATE TABLE cursos(
id SERIAL,
nombre VARCHAR(30) NOT NULL,
PRIMARY KEY (id));

CREATE TABLE alumnos(
rut VARCHAR(12) NOT NULL UNIQUE,
nombre VARCHAR(40) NOT NULL,
curso_id INT NOT NULL,
PRIMARY KEY (rut),
FOREIGN KEY (curso_id) REFERENCES
cursos(id));

CREATE TABLE profesores(
id SERIAL,
nombre VARCHAR(40) NOT NULL,
departamento VARCHAR(30),
PRIMARY KEY (id));

CREATE TABLE pruebas(
id SERIAL,
puntaje FLOAT,
alumno_rut VARCHAR(12) NOT NULL,
profesor_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (alumno_rut) REFERENCES
alumnos(rut),
FOREIGN KEY (profesor_id) REFERENCES
profesores(id));
