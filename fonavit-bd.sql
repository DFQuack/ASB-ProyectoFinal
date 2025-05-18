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

-- Inserción de datos
INSERT INTO empleado VALUES
('BG157358', '95847037-6', 'Adriana Sara Blanco Gutiérrez', '1960-11-25', 64, '4631 Oak St, Port Clinton, Ohio, 43452', 'Puesto', 600, null),
('MH293675', '13440466-5', 'Perpetua Jazmín Moreno Hidalgo', '1961-04-22', 64, '6899 Ridge Rd, Cortland, Ohio, 44410', 'Puesto', 600, null),
('ER842134', '52038315-6', 'Alicia Alondra Escobar Rey', '1962-04-30', 63, '1286 S 240th St, Pittsburg, Kansas, 66762', 'Puesto', 600, null),
('PT756824', '67418681-7', 'Esteban Zoilo Pacheco Torres', '1962-12-25', 62, '2320 Crab Point Loop Rd, Morehead City, North Carolina, 28557', 'Puesto', 600, 'BG157358'),
('GS456149', '73297727-5', 'Severo Victoria Gaspar Santana', '1963-04-13', 62, '2900 Grand Ave #22, Kearney, Nebraska, 68847', 'Puesto', 600, 'BG157358'),
('AV843508', '33335521-5', 'Iluminada Rosalinda Andrés Vargas', '1964-06-26', 60, '306 Tennessee Ave, Rossville, Georgia, 30741', 'Puesto', 600, 'BG157358'),
('FC732458', '76480180-8', 'Amadeo Matías Félix Campos', '1970-04-12', 55, '122 Dispatch Dr, Washington Crossing, Pennsylvania, 18977', 'Puesto', 600, 'MH293675'),
('PJ498451', '60695110-6', 'Pacífica Lorenza Pérez Jiménez', '1976-01-02', 49, '503 Bullocks Point Ave, Riverside, Rhode Island, 02915', 'Puesto', 600, 'MH293675'),
('MB789949', '99514209-5', 'Luis Berto Montaña Benítez', '1979-03-31', 46, '1515 S W Round Valley Dr, Randolph, Utah, 84064', 'Puesto', 600, 'MH293675'),
('CC355770', '52200342-1', 'Nadia Bernardo de la Cruz Cabrera', '1981-10-14', 43, '7955 Meadow Dr, Mechanicsville, Virginia, 23111', 'Puesto', 600, 'MH293675'),
('LB048595', '98709441-4', 'Aquilina Eneida Lara Bravo', '1986-03-04', 39, 'Po Box 160, Walker, Minnesota, 56484', 'Puesto', 600, 'ER842134'),
('AL504991', '22680155-4', 'Gisela Alfonso Asís Lozano', '1989-04-13', 36, '1600 Hahn Ave, Marshall, Minnesota, 56258', 'Puesto', 600, 'ER842134'),
('FL109120', '38636240-8', 'Benigno Mar Felipe Lozano', '1990-04-17', 35, '3141 74th St, Atkins, Iowa, 52206', 'Puesto', 600, 'ER842134'),
('RR834813', '98988196-4', 'Arístides Leocadio Ramírez Rodríguez', '1991-09-26', 33, '1220 E 5th St, Ketchikan, Alaska, 99901', 'Puesto', 600, 'ER842134'),
('CD084945', '47359607-2', 'Crisóstomo Eduardo Carrillo Díez', '1992-06-20', 32, '1601 American Way S, Fargo, North Dakota, 58103', 'Puesto', 600, 'BG157358'),
('MM421612', '24644700-4', 'Rosalina Inocencia Montero Méndez', '1996-12-26', 28, '414 W Clark St, Livingston, Montana, 59047', 'Puesto', 600, 'BG157358'),
('CE776670', '40469764-9', 'Jennifer Patrocinio Cantú Esteban', '1998-09-27', 26, '924 N Fairmont Ave, Morristown, Tennessee, 37814', 'Puesto', 600, 'MH293675'),
('CS650518', '26131518-3', 'Ruy Aurelio Casal Sáez', '2000-09-19', 24, '5624 Hubbard Dr, Battleboro, North Carolina, 27809', 'Puesto', 600, 'MH293675'),
('SM395148', '30386464-4', 'Mariana Gregorio Sancho Molina', '2002-11-04', 22, '14 Maple St, Warren, Rhode Island, 02885', 'Puesto', 600, 'ER842134'),
('DS485921', '43642720-0', 'Jennifer María de los Dolores Suárez', '2002-11-05', 22, '1011 5th St SE, Bemidji, Minnesota, 56601', 'Puesto', 600, 'ER842134');