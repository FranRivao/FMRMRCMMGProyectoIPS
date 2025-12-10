
-- Generación automática: SQL
-- Base de Datos: RedBancaria

CREATE DATABASE IF NOT EXISTS RedBancaria;
USE RedBancaria;

-- Tabla: Red Bancaria
CREATE TABLE IF NOT EXISTS Red Bancaria (
        id INTEGER NOT NULL,
    
        nombre VARCHAR(255) NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Banco
CREATE TABLE IF NOT EXISTS Banco (
        id INTEGER NOT NULL,
    
        nombre VARCHAR(255) NOT NULL UNIQUE,
        porcentaje INTEGER NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Cajero
CREATE TABLE IF NOT EXISTS Cajero (
        id DATE NOT NULL,
    
        saldoDisponible DATE NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Cuenta
CREATE TABLE IF NOT EXISTS Cuenta (
        numero INTEGER NOT NULL,
    
        saldo FLOAT NOT NULL UNIQUE,
            PRIMARY KEY (numero)
    );

-- Tabla: Tarjeta
CREATE TABLE IF NOT EXISTS Tarjeta (
        id DATE NOT NULL,
    
        saldoActual FLOAT NOT NULL UNIQUE,
        fechaCaducidad DATE NOT NULL UNIQUE,
        importeMaximo FLOAT NOT NULL UNIQUE,
        estado INTEGER NOT NULL UNIQUE,
        pin INTEGER NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Movimiento
CREATE TABLE IF NOT EXISTS Movimiento (
        id INTEGER NOT NULL,
    
        concepto VARCHAR(255) NOT NULL UNIQUE,
        fecha DATE NOT NULL UNIQUE,
        cantidad FLOAT NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla Relación N:M: accede
CREATE TABLE IF NOT EXISTS accede (
    -- Claves foráneas
    Cajero_FK DATE NOT NULL,
    Tarjeta_FK DATE NOT NULL,
    
    
    FOREIGN KEY (Cajero_FK) REFERENCES Cajero(id),
    FOREIGN KEY (Tarjeta_FK) REFERENCES Tarjeta(id),
    PRIMARY KEY (Cajero_FK, Tarjeta_FK)
);
-- Tabla Relación N:M: realiza
CREATE TABLE IF NOT EXISTS realiza (
    -- Claves foráneas
    Tarjeta_FK DATE NOT NULL,
    Movimiento_FK INTEGER NOT NULL,
    
    
    FOREIGN KEY (Tarjeta_FK) REFERENCES Tarjeta(id),
    FOREIGN KEY (Movimiento_FK) REFERENCES Movimiento(id),
    PRIMARY KEY (Tarjeta_FK, Movimiento_FK)
);

