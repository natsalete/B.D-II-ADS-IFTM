-- Parte Dois

-- Tabela banco
INSERT INTO banco (codigo, nome) VALUES (1, 'Banco do Brasil');
INSERT INTO banco (codigo, nome) VALUES (4, 'CEF');

-- Tabela agencia
INSERT INTO agencia (numero_agencia, cod_banco, endereco) VALUES (0562, 4, 'Rua Joaquim Teixeira Alves, 1555');
INSERT INTO agencia (numero_agencia, cod_banco, endereco) VALUES (3153, 1, "Av.Marcelino Pires, 1960");

-- Tabela conta
INSERT INTO conta (num_conta, saldo, tipo_conta, num_agencia) VALUES ("86340-2", 763.05, 2,  3153);
INSERT INTO conta (num_conta, saldo, tipo_conta, num_agencia) VALUES ("23584-7", 3879.12 , 1,  0562);

-- Tabela cliente
INSERT INTO cliente (cpf, nome, endereco, sexo) VALUES ('111.222.333-44', 'Jennifer B Souza' , 'Rua Cuiabá, 1050', 'F');
INSERT INTO cliente (cpf, nome, endereco, sexo) VALUES ('666.777.888-99', 'Caetano K Lima' , 'Rua Ivinhema, 879', 'M');
INSERT INTO cliente (cpf, nome, endereco, sexo) VALUES ('555.444.777-33', 'Silvia Macedo' , 'Rua Estados Unidos, 735', 'F');

-- Tabela Historico
INSERT INTO historico (cpf, num_conta, data_inicio) VALUES ('111.222.333-44', '23584-7' , '1997-12-17');
INSERT INTO historico (cpf, num_conta, data_inicio) VALUES ('666.777.888-99', '23584-7', '1997-12-17');
INSERT INTO historico (cpf, num_conta, data_inicio) VALUES ('555.444.777-33', '86340-2', '2010-11-29');

-- Tabela telefone_cliente
INSERT INTO telefone_cliente (cpf_cli, telefone ) VALUES ('111.222.333-44', '(67)3422-7788');
INSERT INTO telefone_cliente (cpf_cli, telefone ) VALUES ('666.777.888-99', '(67)3423-9900');
INSERT INTO telefone_cliente (cpf_cli, telefone ) VALUES ('666.777.888-99', '(67)8121-8833');