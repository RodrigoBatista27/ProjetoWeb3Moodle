# ProjetoWeb3Moodle

-- Criação do Banco de Dados MySql

```
CREATE DATABASE IF NOT EXISTS db_login;
USE db_login;
CREATE TABLE IF NOT EXISTS login (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(50) NOT NULL,
  senha VARCHAR(50) NOT NULL
);
INSERT INTO login (usuario, senha) VALUES ('Roddy@gmail.com', '123');
