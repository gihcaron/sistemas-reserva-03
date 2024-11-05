CREATE DATABASE revervas_hotel;

--  armazena as informações dos hóspedes
CREATE TABLE hospedes(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR(150) NOT NULL
);


CREATE TABLE quartos(
    id SERIAL PRIMARY KEY,
    numero_quarto INT UNIQUE NOT NULL,
    
)

CREATE TABLE reservas(

)