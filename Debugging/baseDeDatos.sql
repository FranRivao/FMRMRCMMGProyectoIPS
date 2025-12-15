
-- Generación automática: SQL
-- Base de Datos: redbancaria

CREATE DATABASE IF NOT EXISTS redbancaria;
USE redbancaria;

-- Tabla: Red Bancaria
CREATE TABLE IF NOT EXISTS redBancaria (
        id INTEGER NOT NULL,
    
        nombre VARCHAR(255) NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Banco
CREATE TABLE IF NOT EXISTS banco (
        id INTEGER NOT NULL,
    
        nombre VARCHAR(200) NOT NULL UNIQUE,
        porcentaje INTEGER NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Cajero
CREATE TABLE IF NOT EXISTS cajero (
        id INTEGER NOT NULL,
    
        saldoDisponible FLOAT NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Cuenta
CREATE TABLE IF NOT EXISTS cuenta (
        numero INTEGER NOT NULL,
    
        saldo FLOAT NOT NULL UNIQUE,
            PRIMARY KEY (numero)
    );

-- Tabla: Tarjeta
CREATE TABLE IF NOT EXISTS tarjeta (
        id DATE NOT NULL,
    
        saldoActual FLOAT NOT NULL UNIQUE,
        fechaCaducidad DATE NOT NULL UNIQUE,
        importeMaximo FLOAT NOT NULL UNIQUE,
        estado INTEGER NOT NULL UNIQUE,
        pin INTEGER NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Movimiento
CREATE TABLE IF NOT EXISTS movimiento (
        id INTEGER NOT NULL,
    
        concepto VARCHAR(240) NOT NULL UNIQUE,
        fecha DATE NOT NULL UNIQUE,
        cantidad FLOAT NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );


-- Tabla Relación N:M: accede
CREATE TABLE IF NOT EXISTS accede (
    -- Claves foráneas
    cajero_FK INTEGER NOT NULL,
    tarjeta_FK DATE NOT NULL,
    
    
    FOREIGN KEY (cajero_FK) REFERENCES cajero(id),
    FOREIGN KEY (tarjeta_FK) REFERENCES tarjeta(id),
    PRIMARY KEY (cajero_FK, tarjeta_FK)
);
-- Tabla Relación N:M: realiza
CREATE TABLE IF NOT EXISTS realiza (
    -- Claves foráneas
    tarjeta_FK DATE NOT NULL,
    movimiento_FK INTEGER NOT NULL,
    
    
    FOREIGN KEY (tarjeta_FK) REFERENCES tarjeta(id),
    FOREIGN KEY (movimiento_FK) REFERENCES movimiento(id),
    PRIMARY KEY (tarjeta_FK, movimiento_FK)
);

DROP USER IF EXISTS 'appuser'@'localhost';
CREATE USER 'appuser'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON redbancaria.* TO 'appuser'@'localhost';

