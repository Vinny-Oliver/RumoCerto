CREATE TABLE Destinos (
  id_destino INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  imagem VARCHAR(255)
);

CREATE TABLE Pacotes (
  id_pacote INT AUTO_INCREMENT PRIMARY KEY,
  id_destino INT,
  nome_pacote VARCHAR(100),
  preco DECIMAL(10, 2),
  FOREIGN KEY (id_destino) REFERENCES Destinos(id_destino)
);

CREATE TABLE Clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  telefone VARCHAR(20)
);

CREATE TABLE Reservas (
  id_reserva INT AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_pacote INT,
  data_reserva DATETIME,
  FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
  FOREIGN KEY (id_pacote) REFERENCES Pacotes(id_pacote)
);
