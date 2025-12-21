
-- Generación automática: SQL
-- Base de Datos: redbancaria

CREATE DATABASE IF NOT EXISTS redbancaria;
USE redbancaria;

-- Tabla: Red Bancaria
CREATE TABLE IF NOT EXISTS redBancaria (
        id INTEGER NOT NULL,
    
        nombre VARCHAR(255) NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Banco
CREATE TABLE IF NOT EXISTS banco (
        id INTEGER NOT NULL,
    
        nombre VARCHAR(200) NOT NULL ,
        porcentaje INTEGER NOT NULL ,
            PRIMARY KEY (id)
    );

-- Tabla: Cajero
CREATE TABLE IF NOT EXISTS cajero (
        id INTEGER NOT NULL,
    
        saldoDisponible DOUBLE NOT NULL ,
            PRIMARY KEY (id)
    );

-- Tabla: Cuenta
CREATE TABLE IF NOT EXISTS cuenta (
        numero INTEGER NOT NULL,
    
        saldo DOUBLE NOT NULL ,
            PRIMARY KEY (numero)
    );

-- Tabla: Tarjeta
CREATE TABLE IF NOT EXISTS tarjeta (
        id INTEGER NOT NULL,
    
        saldoActual DOUBLE NOT NULL ,
        fechaCaducidad DATE NOT NULL ,
        importeMaximo DOUBLE NOT NULL ,
        estado INTEGER NOT NULL ,
        pin INTEGER NOT NULL ,
            PRIMARY KEY (id)
    );

-- Tabla: Movimiento
CREATE TABLE IF NOT EXISTS movimiento (
        id INTEGER NOT NULL,
    
        concepto VARCHAR(240) NOT NULL ,
        fecha DATE NOT NULL ,
        cantidad DOUBLE NOT NULL ,
            PRIMARY KEY (id)
    );


-- Tabla Relación N:M: accede
CREATE TABLE IF NOT EXISTS accede (
    -- Claves foráneas
    cajero_FK INTEGER NOT NULL,
    tarjeta_FK INTEGER NOT NULL,
    
    
    FOREIGN KEY (cajero_FK) REFERENCES cajero(id) ON DELETE CASCADE,
    FOREIGN KEY (tarjeta_FK) REFERENCES tarjeta(id) ON DELETE CASCADE,
    PRIMARY KEY (cajero_FK, tarjeta_FK)
);
-- Tabla Relación N:M: realiza
CREATE TABLE IF NOT EXISTS realiza (
    -- Claves foráneas
    tarjeta_FK INTEGER NOT NULL,
    movimiento_FK INTEGER NOT NULL,
    
    
    FOREIGN KEY (tarjeta_FK) REFERENCES tarjeta(id) ON DELETE CASCADE,
    FOREIGN KEY (movimiento_FK) REFERENCES movimiento(id) ON DELETE CASCADE,
    PRIMARY KEY (tarjeta_FK, movimiento_FK)
);

DROP USER IF EXISTS 'appuser'@'localhost';
CREATE USER 'appuser'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON redbancaria.* TO 'appuser'@'localhost';

