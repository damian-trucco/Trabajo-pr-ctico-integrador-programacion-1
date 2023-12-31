-- Trabajo Practico Integrador Programacion I

-- Base de datos bdempleados.sql

CREATE DATABASE IF NOT EXISTS bdempleados;

USE bdempleados;

-- Estructura de tabla para la tabla `Usuarios`

CREATE TABLE Usuarios (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  nombre_usuario varchar(20) NOT NULL,
  clave varchar(20) NOT NULL,
  nombre varchar(20) NOT NULL,
  apellido varchar(20) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY usuario (nombre_usuario)
);

-- Datos para la tabla `Usuarios`

INSERT INTO Usuarios (nombre_usuario, clave, nombre, apellido) VALUES 
('PedroBlanco','clave1234', 'Pedro','Blanco');

-- Estructura de tabla para la tabla `departamentos`

CREATE TABLE Departamentos (
  codDepto int NOT NULL PRIMARY KEY,
  nombreDepto varchar(20) NOT NULL,
  ciudadDepto varchar(20) NOT NULL
);

-- Datos para la tabla `Departamentos`

INSERT INTO Departamentos (codDepto, nombreDepto, ciudadDepto) VALUES
(1, 'GERENCIA', 'BUENOS AIRES'),
(2, 'PRODUCCIÓN', 'BUENOS AIRES'),
(3, 'VENTAS', 'BUENOS AIRES'),
(4, 'VENTAS', 'CORDOBA'),
(5, 'VENTAS', 'SANTA FE'),
(6, 'VENTAS', 'MENDOZA'),
(7, 'INVESTIGACIÓN', 'BUENOS AIRES'),
(8, 'COMERCIALIZACIÓN', 'BUENOS AIRES'),
(9, 'MANTENIMIENTO', 'BUENOS AIRES'),
(10, 'MANTENIMIENTO', 'CORDOBA'),
(11, 'MANTENIMIENTO', 'SANTA FE'),
(12, 'MANTENIMIENTO', 'MENDOZA');

-- Estructura de tabla para la tabla `Empleados`

CREATE TABLE Empleados (
  idEmpleado int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(20) NOT NULL,
  apellido varchar(20) NOT NULL,
  dni int NOT NULL,
  fechaNacimiento date NOT NULL,
  fechaIngreso date NOT NULL,
  sueldo float NOT NULL,
  puesto varchar(20) NOT NULL,
  codDepto int NOT NULL
);

-- Datos para la tabla Empleados

INSERT INTO Empleados (idEmpleado, nombre, apellido, dni, fechaNacimiento, fechaIngreso, sueldo, puesto, codDepto) VALUES
(1, 'Abel', 'Gómez', 444444, '1939-12-24', '2000-10-01', 105000.00, 'Mecánico', 10),
(2, 'Mario', 'Llano', 737689, '1945-08-30', '1990-05-16', 225000.00, 'Vendedor', 3),
(3, 'Joaquín', 'Rosas', 768782, '1947-07-07', '1990-05-16', 225000.00, 'Vendedor', 5),
(4, 'Iván', 'Duarte', 888888, '1955-08-12', '1998-05-16', 105000.00, 'Mecánico', 11),
(5, 'José', 'Giraldo', 1130222, '1985-01-20', '2000-11-01', 120000.00, 'Asesor', 8),
(6, 'Pedro', 'Blanco', 1130333, '1987-10-28', '2000-10-01', 80000.00, 'Jefe RRHH',1),
(7, 'Jesús', 'Alfonso', 1130444, '1988-03-14', '2000-10-01', 80000.00, 'Vendedor', 6),
(8, 'Julián', 'Mora', 1130555, '1989-07-03', '2000-10-01', 80000.00, 'Técnico', 2),
(9, 'Manuel', 'Millán', 1130666, '1990-12-08', '2004-06-01', 80000.00, 'Vendedor', 4),
(10, 'Marcos', 'Cortez', 1130777, '1986-06-23', '2000-04-16', 255000.00, 'Mecánico', 9),
(11, 'Antonio', 'Gil', 1130782, '1980-01-23', '2010-04-16', 850000.00, 'Técnico', 2),
(12, 'Melissa', 'Roa', 1751219, '1960-06-19', '2001-03-16', 225000.00, 'Vendedor', 4),
(13, 'Irene', 'Díaz', 11111111,  '1979-09-28', '2004-06-01', 1050000.00, 'Mecánico', 12),
(14, 'Luis', 'Pérez', 16211383, '1956-02-25', '2000-01-01', 5050000.00, 'Director', 9),
(15, 'Darío', 'Casas', 16759060, '1960-04-05', '1992-11-01', 4500000.00, 'Investigador', 7),
(16, 'William', 'Daza', 19709802, '1982-10-09', '1999-12-16', 2250000.00, 'Técnico', 2),
(17, 'Carla', 'López', 22222222, '1975-05-11', '2005-07-16', 4500000.00, 'Jefe Mercadeo', 1),
(18, 'Carlos', 'Rozo', 22222333, '1975-05-11', '2001-09-16', 750000.00, 'Vigilante', 12),
(19, 'Diana', 'Solarte', 31174099, '1957-11-19', '1990-05-16', 1250000.00, 'Secretaria', 10),
(20, 'Rosa', 'Angulo', 31178144, '1957-03-15', '1998-08-16', 3250000.00, 'Jefe Ventas', 1);

-- Estructura de tabla para la tabla 'Categoria'

CREATE TABLE Categoria (
  idCategoria int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombreCategoria varchar(20) NOT NULL
);

-- Datos para la tabla `Categoria`

INSERT INTO Categoria (idCategoria, nombreCategoria) VALUES
(1, 'Grupo A'),
(2, 'Grupo B'),
(3, 'Grupo C'),
(4, 'Grupo D'),
(5, 'Grupo E');

-- Estructura de tabla para la tabla `CategoriaEmpleado`

CREATE TABLE CategoriaEmpleado (
  idEmpleado int NOT NULL,
  idCategoria int NOT NULL,
  condicionEmpleado varchar(20) DEFAULT NULL,
  descripcion varchar(20) DEFAULT NULL
);
