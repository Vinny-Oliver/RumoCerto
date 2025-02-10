CREATE TABLE Clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Pacotes (
  id_pacote INT AUTO_INCREMENT PRIMARY KEY,
  nome_pacote VARCHAR(100) NOT NULL,
  preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE Reservas (
  id_reserva INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT NOT NULL,
  id_pacote INT NOT NULL,
  data_reserva DATETIME NOT NULL,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE,
  FOREIGN KEY (id_pacote) REFERENCES Pacotes(id_pacote) ON DELETE CASCADE
);
