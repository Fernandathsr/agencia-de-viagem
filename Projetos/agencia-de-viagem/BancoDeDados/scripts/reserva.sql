CREATE TABLE Reserva (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_pacote INT,
    data_reserva DATE NOT NULL,
    quantidade_pessoas INT NOT NULL,
    status_reserva ENUM('pendente', 'confirmada', 'cancelada') DEFAULT 'pendente',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_pacote) REFERENCES Pacotes(id_pacote) ON DELETE CASCADE
);