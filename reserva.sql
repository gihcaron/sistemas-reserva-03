CREATE DATABASE revervas_hotel;

CREATE TABLE Hospedes(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(150) NOT NULL
);

CREATE TABLE Quartos(
    id SERIAL PRIMARY KEY,
    numero_quarto INT UNIQUE NOT NULL,
    
)