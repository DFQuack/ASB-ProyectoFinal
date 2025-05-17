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