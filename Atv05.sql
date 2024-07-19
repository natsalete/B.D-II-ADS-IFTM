-- Usando o modelo de um sistema bancário faça os seguintes exercícios:
-- 1. Crie uma trigger para inserir na tabela telefone_cliente com um valor padrão de telefone depois
-- de inserir na tabela cliente algum registro
DELIMITER //

CREATE TRIGGER after_insert_cliente
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO telefone_cliente (cpf_cli, telefone) VALUES (NEW.cpf, '(00)0000-0000');
END;

//

DELIMITER ;

-- 2. Crie uma trigger para que uma vez que seja deletado o cliente, seja deletado também o registro
-- na tabela telefone_cliente 
DELIMITER //

CREATE TRIGGER before_delete_cliente
BEFORE DELETE ON cliente
FOR EACH ROW
BEGIN
    DELETE FROM telefone_cliente WHERE cpf_cli = OLD.cpf;
END;

//

DELIMITER ;

-- 3. Adicione ao modelo uma tabela de log (registros). Sempre que os dados de uma conta forem
-- atualizados será gerado um registro nessa tabela, os dados antes e depois da atualização. Crie
-- um campo timestamp para armazenar a operação.
CREATE TABLE log_conta (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    num_conta VARCHAR(7),
    old_saldo FLOAT,
    new_saldo FLOAT,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER after_update_conta
AFTER UPDATE ON conta
FOR EACH ROW
BEGIN
    INSERT INTO log_conta (num_conta, old_saldo, new_saldo) VALUES (OLD.num_conta, OLD.saldo, NEW.saldo);
END;

//

DELIMITER ;

-- 4. Crie uma view com o nome do cliente, nome do banco, endereço da agência, e número da
-- conta.

CREATE VIEW view_cliente_banco AS
SELECT 
    cliente.nome AS nome_cliente,
    banco.nome AS nome_banco,
    agencia.endereco AS endereco_agencia,
    conta.num_conta AS numero_conta
FROM 
    cliente
JOIN 
    historico ON cliente.cpf = historico.cpf
JOIN 
    conta ON historico.num_conta = conta.num_conta
JOIN 
    agencia ON conta.num_agencia = agencia.numero_agencia
JOIN 
    banco ON agencia.cod_banco = banco.codigo;