\# ProjetoWeb3Moodle

\-- Criação do banco de dados
```CREATE DATABASE IF NOT EXISTS db_login;```

\-- Utiliza o banco de dados criado
```USE db_login;```

\-- Criação da tabela "login"
```CREATE TABLE IF NOT EXISTS login (
  id INT AUTO_INCREMENT PRIMARY KEY,
  usuario VARCHAR(50) NOT NULL,
  senha VARCHAR(50) NOT NULL
);```

\-- Inserção do usuário "Roddy"
```INSERT INTO login (usuario, senha) VALUES ('Roddy', '123');```
