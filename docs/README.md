```markdown
# RumoCerto - Agência de Viagens

## Descrição

O projeto **RumoCerto** é uma agência de viagens que tem como objetivo fornecer informações sobre pacotes turísticos e permitir que os clientes realizem reservas online. A primeira fase do projeto inclui a criação da interface visual e a modelagem do banco de dados para futuras funcionalidades.

## Tecnologias Utilizadas

- **HTML5**: Estruturação do site.
- **CSS3**: Estilização e personalização.
- **Bootstrap** (Opcional): Design responsivo e moderno.
- **Git/GitHub**: Versionamento do código.
- **MySQL**: Banco de dados.
- **BRModelo**: Modelagem do banco de dados.

## Estrutura do Projeto

### Interface Visual

A interface do site é composta por quatro páginas principais:

- **index.html**: Apresentação da agência e destinos populares.
- **pacotes.html**: Exibição de pacotes turísticos e seus preços.
- **reservas.html**: Página para o cliente selecionar pacotes e realizar a reserva.
- **contato.html**: Formulário de contato para os clientes.

### Estrutura de Arquivos

```bash
rumocerto/
├── index.html
├── pacotes.html
├── reservas.html
├── contato.html
├── assets/
│   ├── css/
│   │   ├── styles.css
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

## Modelagem do Banco de Dados

### Diagrama Conceitual

As tabelas do banco de dados foram modeladas da seguinte maneira:

- **Clientes**: Armazena as informações dos clientes.
- **Pacotes**: Contém dados sobre os pacotes turísticos e seus preços.
- **Reservas**: Registra as reservas feitas pelos clientes para os pacotes.

### Script SQL

```sql
CREATE TABLE Clientes (
  id_cliente INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  telefone VARCHAR(20)
);

CREATE TABLE Pacotes (
  id_pacote INT AUTO_INCREMENT PRIMARY KEY,
  nome_pacote VARCHAR(100),
  preco DECIMAL(10, 2)
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

## Versionamento de Código

- **Repositório no GitHub**: [RumoCerto GitHub](https://github.com/Vinny-Oliver/RumoCerto)
- **Commits organizados** conforme as etapas do desenvolvimento.

## Entrega

- **Código Fonte**: O código pode ser encontrado no repositório GitHub.
- **Vídeo**: Demonstração do projeto disponível no Google Drive ou YouTube (a ser disponibilizado).

## Próximos Passos

- Implementar funcionalidades dinâmicas, como cadastro de clientes e reservas online.
- Continuar aprimorando a interface com o uso do **Bootstrap** para garantir responsividade em dispositivos móveis.
- Testar e ajustar a interação do formulário de reservas com o banco de dados.

## Considerações Finais

Este projeto é uma base inicial para o sistema de reservas de uma agência de viagens. A próxima fase pode incluir a implementação de funcionalidades dinâmicas para a reserva online de pacotes, bem como a integração de mais recursos para uma experiência mais completa.