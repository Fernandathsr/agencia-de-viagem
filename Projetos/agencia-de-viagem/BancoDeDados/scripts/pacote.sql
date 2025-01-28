CREATE TABLE Pacote (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    destino VARCHAR(100),
    data_inicio DATE,
    data_fim DATE,
    preco DECIMAL(10, 2) NOT NULL,
    disponibilidade BOOLEAN DEFAULT TRUE
);
