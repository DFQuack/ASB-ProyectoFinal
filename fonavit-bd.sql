CREATE DATABASE fonavit_bd;
USE fonavit_bd;

-- Creación de tablas
CREATE TABLE empleado (
  carnet char(8) PRIMARY KEY,
  dui char(10),
  nombre varchar(50),
  fecha_nac date,
  edad tinyint,
  direccion varchar(100),
  puesto varchar(20),
  sueldo smallmoney,
  carnet_jefe char(8)
);

CREATE TABLE cliente (
  num_cuenta int PRIMARY KEY IDENTITY(1,1),
  dui char(10),
  nombre varchar(50),
  fecha_nac date,
  edad tinyint,
  direccion varchar(100),
  estado_fam varchar(10)
);

CREATE TABLE transaccion (
  id char(6) PRIMARY KEY,
  carnet char(8) FOREIGN KEY REFERENCES empleado(carnet),
  num_cuenta int FOREIGN KEY REFERENCES cliente(num_cuenta),
  dui char(10),
  monto smallmoney,
  fecha date
);

CREATE TABLE prestamo (
  id varchar PRIMARY KEY,
  num_cuenta int FOREIGN KEY REFERENCES cliente(num_cuenta),
  dui char(10),
  monto smallmoney,
  interes tinyint,
  fecha date,
  plazo tinyint
);

CREATE LOGIN administrador WITH PASSWORD = '1234';
CREATE LOGIN sistema WITH PASSWORD = '4321';
CREATE LOGIN webservice WITH PASSWORD = '0123';

CREATE USER administrador FOR LOGIN administrador;
CREATE USER sistema FOR LOGIN sistema;
CREATE USER webservice FOR LOGIN webservice;

GRANT SELECT, INSERT, DELETE, UPDATE TO administrador;
GRANT ALTER ANY LOGIN TO administrador;
GRANT ALTER ANY USER TO administrador;
GRANT CONTROL SERVER TO administrador;

GRANT SELECT, INSERT ON empleado TO sistema;
GRANT SELECT, INSERT ON cliente TO sistema;
GRANT SELECT, INSERT ON transaccion TO sistema;
GRANT SELECT, INSERT ON prestamo TO sistema;

-- Creado en bloque aparte
CREATE VIEW vistaTransacciones AS 
SELECT id, carnet, num_cuenta, dui, monto, fecha
FROM transaccion;

GRANT SELECT ON vistaTransacciones TO webservice;