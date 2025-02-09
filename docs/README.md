# Documentação do Projeto - RumoCerto

## 1. Introdução

Este documento tem como objetivo descrever a estrutura e os requisitos do projeto "RumoCerto", uma agência de viagens. O projeto envolve a criação de uma interface inicial para apresentação visual e a modelagem do banco de dados, servindo como base para futuras funcionalidades.

## 2. Tecnologias Utilizadas

- **HTML5**: Estruturação do site.
- **CSS3**: Estilização e personalização.
- **Bootstrap (Opcional)**: Design responsivo e moderno.
- **Git/GitHub**: Versionamento do código.
- **BRModelo**: Modelagem do banco de dados.
- **MySQL**: Banco de dados.

## 3. Estrutura do Projeto

### 3.1. Interface Visual

A interface do site foi estruturada com:

- **Index**: Apresentação da agência e destinos populares.
- **Destinos**: Locais de viagem.
- **Pacotes**: Valores.
- **Contato**: Formulário de contato.

### 3.2. Estrutura de Arquivos

```
rumocerto/
├── index.html
├── destinos.html
├── pacotes.html
├── contato.html
├── assets/
│   ├── css/
│   │   ├── styles.css
│   │   ├── destinos.css    
│   ├── img/
│   │   ├── jerusalem.png
│   │   ├── paris.jpg
│   │   ├── rio_de_janeiro.png
│   ├── js/
│   │   ├── script.js (futuro uso)
├── db/
│   ├── banco.sql
│   ├── conceptual_model_brmw.pdf
│   ├── logic_model_brmw.pdf
```

## 4. Modelagem do Banco de Dados

### 4.1. Diagrama Conceitual

- **Clientes** (id_cliente, nome, email, telefone)
- **Destinos** (id_destino, nome, descrição, imagem)
- **Reservas** (id_reserva, id_cliente, id_pacote, data_reserva)
- **Pacotes** (id_pacote, id_destino, nome_pacote, preço)

### 4.2. Script SQL

```sql
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
```

## 5. Versionamento de Código (Opcional)

- **Repositório no GitHub**: [Link do Repositório](#)
- **Commits organizados** conforme as etapas do desenvolvimento.

## 6. Entrega

- **Código Fonte**: Enviado em arquivo compactado ou via GitHub.
- **Vídeo**: Demonstração do projeto (Google Drive, YouTube, etc.).

## 7. Considerações Finais

Esta primeira etapa foca na estruturação inicial do projeto. A próxima fase poderá incluir funcionalidades dinâmicas, como cadastro e reservas online.

