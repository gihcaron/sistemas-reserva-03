CREATE DATABASE revervas_hotel;

--  armazena as informações dos hóspedes
CREATE TABLE hospedes(
    id_hospede SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    telefone VARCHAR (23),
    email VARCHAR(150) NOT NULL
);

-- Quartos contém os dados dos quartos disponíveis no hotel
CREATE TABLE quartos(
    id_quarto SERIAL PRIMARY KEY,
    numero_quarto INT UNIQUE NOT NULL,
    quarto_disponivel BOOLEAN NOT NULL DEFAULT TRUE,
    valor_diaria DECIMAL (12,2) NOT NULL
);

--  tabela Reservas registra as reservas realizadas pelos hóspedes
CREATE TABLE reservas(
    id_reserva SERIAL PRIMARY KEY,
        id_hospede INT NOT NULL,
    id_quarto INT NOT NULL,
    data_entrada DATE NOT NULL DEFAULT CURRENT_DATE,
    data_saida DATE NOT NULL DEFAULT CURRENT_DATE,
    hora_reserva TIME NOT NULL,
    CONSTRAINT fk_hospede FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede),
    CONSTRAINT fk_quarto FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto)
);