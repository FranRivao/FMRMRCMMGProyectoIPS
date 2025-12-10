
-- Generación automática: SQL
-- Base de Datos: GestionMat

CREATE DATABASE IF NOT EXISTS GestionMat;
USE GestionMat;

-- Tabla: Red Bancaria
CREATE TABLE IF NOT EXISTS Red Bancaria (
        id DATE NOT NULL,
    
        nombre VARCHAR(255) NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Banco
CREATE TABLE IF NOT EXISTS Banco (
        id DATE NOT NULL,
    
        nombre DATE NOT NULL UNIQUE,
        porcentaje DATE NOT NULL UNIQUE,
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
        numero DATE NOT NULL,
    
        saldo DATE NOT NULL UNIQUE,
            PRIMARY KEY (numero)
    );

-- Tabla: Tarjeta
CREATE TABLE IF NOT EXISTS Tarjeta (
        id DATE NOT NULL,
    
        saldoActual DATE NOT NULL UNIQUE,
        fechaCaducidad DATE NOT NULL UNIQUE,
        importeMaximo DATE NOT NULL UNIQUE,
        estado DATE NOT NULL UNIQUE,
        pin DATE NOT NULL UNIQUE,
            PRIMARY KEY (id)
    );

-- Tabla: Movimiento
CREATE TABLE IF NOT EXISTS Movimiento (
        id DATE NOT NULL,
    
        concepto DATE NOT NULL UNIQUE,
        fecha DATE NOT NULL UNIQUE,
        cantidad DATE NOT NULL UNIQUE,
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
    Movimiento_FK DATE NOT NULL,
    
    
    FOREIGN KEY (Tarjeta_FK) REFERENCES Tarjeta(id),
    FOREIGN KEY (Movimiento_FK) REFERENCES Movimiento(id),
    PRIMARY KEY (Tarjeta_FK, Movimiento_FK)
);

