CREATE DATABASE fonavit_bd;
USE fonavit_bd;

-- Creación de tablas
CREATE TABLE empleado (
  carnet varchar PRIMARY KEY,
  dui varchar,
  nombre varchar,
  fecha_nac date,
  edad tinyint,
  direccion varchar,
  puesto varchar,
  sueldo smallmoney,
  carnet_jefe varchar
);

CREATE TABLE cliente (
  num_cuenta int PRIMARY KEY IDENTITY(1,1),
  dui varchar,
  nombre varchar,
  fecha_nac date,
  edad tinyint,
  direccion varchar,
  estado_fam varchar
);

CREATE TABLE transaccion (
  id varchar PRIMARY KEY,
  carnet varchar FOREIGN KEY REFERENCES empleado(carnet),
  num_cuenta int FOREIGN KEY REFERENCES cliente(num_cuenta),
  dui varchar,
  monto smallmoney,
  fecha date
);

CREATE TABLE prestamo (
  id varchar PRIMARY KEY,
  num_cuenta int FOREIGN KEY REFERENCES cliente(num_cuenta),
  dui varchar,
  monto smallmoney,
  interes tinyint,
  fecha date,
  plazo tinyint
);