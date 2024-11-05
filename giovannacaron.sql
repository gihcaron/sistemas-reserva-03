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

-- Inserção de dados

INSERT INTO hospedes (nome, idade, email, telefone) 
VALUES 
('Giovanna Caron', 20, 'giovannacaron@gmail.com', '(11) 12345678'),
('Taylor Swift', 27, 'taylorswift@gmail.com', '(11) 33333333'),
('Harry Styles', 30, 'harrystyles@gmail.com', '(11) 44444444'),
('Zayn Malik', 30, 'zaynmalik@gmail.com', '(11) 55555555'),
('Rihanna', 40, 'rihana@gmail.com', '(11) 12345644'),
('Luan Santana', 36, 'santanaluan10@gmail.com', '(34) 12345555'),
('Rafaela Ferreira', 18, 'rafaela@gmail.com', '(43) 09845678'),
('Rachel Loh', 40, 'lohrachel@outook.com', '(21) 12345678'),
('Katy Perry', 20, 'perrykty@gmail.com', '(81) 12367878'),
('Ana Caetano', 20, 'giovannacaron@gmail.com', '(11) 12345678'),
('Thiago Ferreira', 20, 'ferreirathiago@outlook.com', '(28) 02845678'),
('Bruno Mars', 28, 'marsbruno@gmail.com', '(11) 88345667');

INSERT INTO quartos (numero_quarto, quarto_disponivel, valor_diaria)
VALUES
(307, TRUE, 500.00),
(1001, FALSE, 600.00),
(903, TRUE, 400.00),
(103, TRUE, 389.00),
(1002, FALSE, 600.00),
(507,  FALSE, 789.00),
(309, FALSE, 500.00),
(104, TRUE, 389.00),
(600, FALSE, 400.00),
(201, TRUE, 300.00);

INSERT INTO reservas (id_hospede, id_quarto, data_entrada, data_saida, hora_reserva)
VALUES
(1, 3, '2025-01-01', '2025-01-04', '15:00:00'),
(2, 1, '2024-12-24', '2024-12-27', '18:00:00'),
(3, 10, '2024-11-29' , '2024-12-02', '10:00:00'),
(5, 6, '2024-12-01', '2024-12-04', '22:00:00'),
(4, 4, '2027-01-03', '2027-01-04', '15:00:00'),
(6, 5, '2024-10-10', '2024-10-11', '16:00:00'),
(7, 7, '2024-11-05', '2024-11-06', '9:00:00'),
(12, 9, '2024-11-05', '2024-11-06', '20:00:00'),
(11, 2, '2024-11-05', '2024-11-06', '20:00:00');


