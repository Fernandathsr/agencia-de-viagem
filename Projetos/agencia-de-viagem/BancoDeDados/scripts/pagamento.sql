CREATE TABLE Pagamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento DATE NOT NULL,
    forma_pagamento ENUM('cartão de crédito', 'transferência bancária', 'dinheiro', 'outros') NOT NULL,
    status_pagamento ENUM('pago', 'pendente', 'cancelado') DEFAULT 'pendente',
    FOREIGN KEY (id_reserva) REFERENCES Reservas(id_reserva) ON DELETE CASCADE
);