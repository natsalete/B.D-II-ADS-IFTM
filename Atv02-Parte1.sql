CREATE DATABASE Banco;
USE Banco;

CREATE TABLE banco (
    codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45)
);
 
 CREATE TABLE agencia (
    numero_agencia INT NOT NULL AUTO_INCREMENT,
    cod_banco INT NOT NULL,
    FOREIGN KEY (cod_banco)
        REFERENCES banco (codigo)
        ON UPDATE RESTRICT ON DELETE RESTRICT,
    endereco VARCHAR(100),
    CONSTRAINT n_agencia_cod_banco PRIMARY KEY agencia (numero_agencia , cod_banco)
);

CREATE TABLE conta (
    num_conta VARCHAR(7) NOT NULL PRIMARY KEY,
    saldo FLOAT NOT NULL,
    tipo_conta INT,
    num_agencia INT,
    FOREIGN KEY (num_agencia)
        REFERENCES agencia (numero_agencia)
);

CREATE TABLE cliente (
    cpf VARCHAR(14) NOT NULL PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(100),
    sexo CHAR(1)
);


CREATE TABLE historico (
    cpf VARCHAR(14) NOT NULL,
    FOREIGN KEY (cpf)
        REFERENCES cliente (cpf),
    num_conta VARCHAR(7) NOT NULL,
    FOREIGN KEY (num_conta)
        REFERENCES conta (num_conta),
    data_inicio DATE,
    CONSTRAINT cpf_num_conta PRIMARY KEY historico (cpf , num_conta)
);

CREATE TABLE telefone_cliente (
    cpf_cli VARCHAR(14) NOT NULL,
    FOREIGN KEY (cpf_cli)
        REFERENCES cliente (cpf),
    telefone VARCHAR(20) NOT NULL,
    CONSTRAINT cpf_telefone PRIMARY KEY telefone_cliente (cpf_cli , telefone)
);
