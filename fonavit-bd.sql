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
  tipo varchar(6),
  fecha date,
  activo bit
);

CREATE TABLE prestamo (
  id char(6) PRIMARY KEY,
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

INSERT INTO cliente VALUES
(,'31388433-4', 'Lisandro Liberato Medina Domínguez', '2008-12-30', 18, '603 W Rambo St, Danville, Ohio, 43014', 'Casado/a'),
(,'82523038-9', 'Tito Azucena Quesada Carrasco', '1961-01-11', 64, '388 Us 20 Hwy S, Basin, Wyoming, 82410', 'Casado/a'),
(,'64102036-6', 'Patrocinio Dina Morales Navarro', '1962-03-07', 63, '20067 Appledowre Cir #13, Germantown, Maryland, 20876', 'Soltero/a'),
(,'28145158-9', 'Noelia Libertad Miguel Martín', '1963-03-20', 62, '5105 Lawson Ave, Gulfport, Mississippi, 39507', 'Soltero/a'),
(,'33137327-5', 'Mireya Alejo Durán Carmona', '1966-07-27', 58, '305 S 5th St E, Riverton, Wyoming, 82501', 'Soltero/a'),
(,'64983352-0', 'Maite María de la Cruz Monte', '1966-09-20', 58, '198 River Forest Rd, Evansdale, Iowa, 50707', 'Soltero/a'),
(,'15680194-8', 'Katalina Sonia Ybarra Molina', '1966-09-29', 58, '2011 River Reach Dr, Naples, Florida, 34104', 'Casado/a'),
(,'62716169-2', 'Feliciano Felisa Capilla Campos', '1969-03-01', 56, '76 Lincoln St, Essex Junction, Vermont, 05452', 'Casado/a'),
(,'54738441-5', 'Ovidia Hilda Félix Castillo', '1973-04-25', 52, '402 Apple Valley Rd #A, Ashfield, Massachusetts, 01330', 'Viudo/a - Divorciado/a'),
(,'84311097-1', 'Germán Patrocinio Salinas Cambil', '1975-09-13', 49, '170 Forbes Rd #106, Braintree, Massachusetts, 02184', 'Viudo/a - Divorciado/a'),
(,'09734462-0', 'Jerónimo Valerio González Ortega', '1980-10-07', 44, '209 Starkweather Dr, Beaver Dam, WI, 53916', 'Soltero/a'),
(,'92525969-2', 'José Antonio Andrés Travieso', '1982-07-31', 42, '210 Arrowhead Dr #A4, Miles City, Montana, 59301', 'Viudo/a - Divorciado/a'),
(,'34540287-1', 'Liliana Israel Medina Santana', '1984-02-05', 41, '99 Great Hollow Rd, Woodbury, Connecticut, 06798', 'Viudo/a - Divorciado/a'),
(,'71658729-7', 'Nidia Marcelina Parra López', '1985-09-14', 39, '823 S 36th St, Quincy, Illinois, 62301', 'Viudo/a - Divorciado/a'),
(,'07306850-3', 'Leonel Jair Caballero Lozano', '1986-05-30', 38, '152 County Rd #359, Jasper, Texas, 75951', 'Casado/a'),
(,'16570202-6', 'Lorena Etelvina Ramos Pastor', '1988-08-12', 36, '106 Rr 1 N, North, South Carolina, 29112', 'Viudo/a - Divorciado/a'),
(,'95113712-8', 'Jefferson Aarón Plaza Álvarez', '1988-10-28', 36, '1535 S 700th W, Woods Cross, Utah, 84087', 'Viudo/a - Divorciado/a'),
(,'08301629-7', 'Maricruz Andrea Rivera Montero', '1995-11-07', 29, '179 Mountain Rd, Concord, New Hampshire, 03301', 'Casado/a'),
(,'62354782-3', 'Florentina Próspero Bustillo Soto', '2001-07-28', 23, '320 5th St, Centertown, Kentucky, 42328', 'Soltero/a'),
(,'99587804-5', 'Casandra Merche Benito Rodríguez', '2003-09-15', 21, '1234 N 725th W, Woods Cross, Utah, 84087', 'Soltero/a');

INSERT INTO transaccion VALUES
('982eff', 'PT756824', 1, '31388433-4', 951, 'Retiro', '2020-08-04', 0),
('3383b0', 'GS456149', 2, '82523038-9', 982, 'Retiro', '2020-09-05', 0),
('d21074', 'AV843508', 3, '64102036-6', 979, 'Abono', '2020-10-02', 0),
('c4d192', 'FC732458', 4, '28145158-9', 341, 'Abono', '2021-05-17', 0),
('5ef1fd', 'PJ498451', 5, '33137327-5', 72, 'Retiro', '2021-06-19', 0),
('f56c2a', 'MB789949', 6, '64983352-0', 575, 'Abono', '2021-10-26', 0),
('779caa', 'CC355770', 7, '15680194-8', 908, 'Abono', '2022-05-17', 0),
('474f0b', 'LB048595', 8, '62716169-2', 711, 'Abono', '2022-05-31', 0),
('3f4b5f', 'AL504991', 9, '54738441-5', 265, 'Abono', '2022-10-06', 0),
('ffbc76', 'FL109120', 10, '84311097-1', 953, 'Abono', '2023-08-02', 0),
('9fb193', 'RR834813', 11, '09734462-0', 711, 'Abono', '2023-09-06', 0),
('4e9545', 'CD084945', 12, '92525969-2', 261, 'Retiro', '2023-09-11', 0),
('c98de4', 'MM421612', 13, '34540287-1', 234, 'Abono', '2024-03-26', 0),
('afb5b1', 'CE776670', 14, '71658729-7', 442, 'Abono', '2024-04-05', 0),
('2a8897', 'CS650518', 15, '07306850-3', 845, 'Abono', '2024-05-18', 0),
('cecf31', 'SM395148', 16, '16570202-6', 825, 'Abono', '2024-08-28', 0),
('bb5885', 'DS485921', 17, '95113712-8', 689, 'Retiro', '2024-10-08', 0),
('7922e6', 'PT756824', 18, '08301629-7', 888, 'Retiro', '2024-11-07', 0),
('a886c4', 'GS456149', 19, '62354782-3', 844, 'Abono', '2024-12-25', 0),
('2e8072', 'AV843508', 20, '99587804-5', 165, 'Abono', '2025-03-27', 1);

INSERT INTO prestamo VALUES
('9bf705', 1, '31388433-4', 998, 1, '2020-05-19', 120),
('1928a6', 2, '82523038-9', 186, 12, '2020-09-23', 30),
('ffb810', 3, '64102036-6', 619, 3, '2020-10-30', 120),
('8f8e4e', 4, '28145158-9', 287, 8, '2020-12-28', 30),
('5fdca4', 5, '33137327-5', 252, 14, '2021-02-24', 30),
('024c7a', 6, '64983352-0', 533, 11, '2021-04-28', 60),
('88a4f7', 7, '15680194-8', 974, 8, '2021-07-21', 120),
('c68433', 8, '62716169-2', 176, 4, '2022-02-03', 30),
('d5138b', 9, '54738441-5', 137, 5, '2022-11-01', 30),
('c6a76c', 10, '84311097-1', 531, 15, '2022-11-15', 60),
('fcf310', 11, '09734462-0', 575, 3, '2022-12-17', 60),
('6181e0', 12, '92525969-2', 714, 15, '2023-02-24', 120),
('0cc4b3', 13, '34540287-1', 734, 11, '2023-05-05', 120),
('0f077e', 14, '71658729-7', 368, 15, '2023-09-25', 60),
('c662df', 15, '07306850-3', 731, 3, '2024-02-10', 120),
('6f3368', 16, '16570202-6', 741, 9, '2024-06-12', 120),
('ccac38', 17, '95113712-8', 875, 10, '2024-08-07', 120),
('6a4688', 18, '08301629-7', 144, 9, '2025-01-04', 30),
('0b4e61', 19, '62354782-3', 692, 8, '2025-01-18', 120),
('d0f05d', 20, '99587804-5', 381, 15, '2025-02-04', 60);

-- Login
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

-- Vista de transacciones
CREATE VIEW vistaTransacciones AS 
SELECT id, carnet, num_cuenta, dui, monto, fecha
FROM transaccion;

GRANT SELECT ON vistaTransacciones TO webservice;

<<<<<<< HEAD

-- 1. Tabla de auditoría
CREATE TABLE auditoria (
    id INT IDENTITY(1,1) PRIMARY KEY,
    tabla_afectada VARCHAR(100),
    accion VARCHAR(20),
    usuario_sql SYSNAME,
    fecha DATETIME DEFAULT GETDATE()
);
GO

-- 2. Tabla resumen diaria
CREATE TABLE TRANSACCIONES_DIARIAS (
    id_transaccion char(6),
    num_cuenta int,
    dui_cliente char(10),
    nombre_cliente varchar(50),
    nombre_empleado varchar(50),
    jefe_inmediato varchar(50),
    monto smallmoney,
    tipo_transaccion varchar(10),
    prestamo_activo varchar(2)
);
GO

-- 3. Procedimiento almacenado
CREATE PROCEDURE ActualizarTransaccionesDiarias
AS
BEGIN
    DELETE FROM TRANSACCIONES_DIARIAS;

    INSERT INTO TRANSACCIONES_DIARIAS
    SELECT 
        t.id,
        c.num_cuenta,
        c.dui,
        c.nombre,
        e.nombre,
        j.nombre AS jefe_inmediato,
        t.monto,
        t.tipo,
        CASE 
            WHEN EXISTS (
                SELECT 1 FROM prestamo p 
                WHERE p.num_cuenta = c.num_cuenta 
                  AND CONVERT(DATE, p.fecha) = CONVERT(DATE, GETDATE())
            ) THEN 'SI'
            ELSE 'NO'
        END AS prestamo_activo
    FROM transaccion t
    JOIN cliente c ON t.num_cuenta = c.num_cuenta
    JOIN empleado e ON t.carnet = e.carnet
    LEFT JOIN empleado j ON e.carnet_jefe = j.carnet
    WHERE CONVERT(DATE, t.fecha) = CONVERT(DATE, GETDATE());
END;
GO

-- 4. Triggers para tabla TRANSACCION
CREATE TRIGGER trg_Insert_Transaccion
ON transaccion
AFTER INSERT
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('transaccion', 'INSERT', SYSTEM_USER);
    EXEC ActualizarTransaccionesDiarias;
END;
GO

CREATE TRIGGER trg_Update_Transaccion
ON transaccion
AFTER UPDATE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('transaccion', 'UPDATE', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Delete_Transaccion
ON transaccion
AFTER DELETE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('transaccion', 'DELETE', SYSTEM_USER);
END;
GO

-- 5. Triggers para tabla EMPLEADO
CREATE TRIGGER trg_Insert_Empleado
ON empleado
AFTER INSERT
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('empleado', 'INSERT', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Update_Empleado
ON empleado
AFTER UPDATE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('empleado', 'UPDATE', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Delete_Empleado
ON empleado
AFTER DELETE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('empleado', 'DELETE', SYSTEM_USER);
END;
GO

-- 6. Triggers para tabla CLIENTE
CREATE TRIGGER trg_Insert_Cliente
ON cliente
AFTER INSERT
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('cliente', 'INSERT', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Update_Cliente
ON cliente
AFTER UPDATE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('cliente', 'UPDATE', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Delete_Cliente
ON cliente
AFTER DELETE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('cliente', 'DELETE', SYSTEM_USER);
END;
GO

-- 7. Triggers para tabla PRESTAMO
CREATE TRIGGER trg_Insert_Prestamo
ON prestamo
AFTER INSERT
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('prestamo', 'INSERT', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Update_Prestamo
ON prestamo
AFTER UPDATE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('prestamo', 'UPDATE', SYSTEM_USER);
END;
GO

CREATE TRIGGER trg_Delete_Prestamo
ON prestamo
AFTER DELETE
AS
BEGIN
    INSERT INTO auditoria (tabla_afectada, accion, usuario_sql)
    VALUES ('prestamo', 'DELETE', SYSTEM_USER);
END;
GO
=======
>>>>>>> eb9d180b94fc1ba56e9ef9e2baeedfc4ab0fd23b
