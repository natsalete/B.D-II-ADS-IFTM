-- Parte 3

-- 3)Altere o número da agência 0562 para 6342.
UPDATE agencia
SET numero_agencia = 6342
WHERE numero_agencia = 0562;

-- 4)Altere o registro do cliente Caetano K Lima acrescentando o email caetanolima@gmail.com.
UPDATE cliente
SET email = 'caetanolima@gmail.com'
WHERE cpf = '666.777.888-99';

-- 5)Conceda à conta 23584-7 um aumento de 10 por cento no saldo.
UPDATE conta
SET saldo = (3879.12 * 110) / 100
WHERE num_conta = '23584-7';

-- 6)Insira na tabela de Agência os seguintes dados:
-- 1) Numero: 1333
-- 2) Endereço: Rua João José da Silva, 486
-- 3) Banco do Brasil
INSERT INTO agencia (numero_agencia, cod_banco, endereco) VALUES (1333, 1, 'Rua João José da Silva, 486');

-- 7)Recupere o número e o endereço de todas as agências do Banco do Brasil. Use o código do banco fixo na condição do where.
SELECT numero_agencia, endereco
FROM agencia
WHERE cod_banco = 1;

-- 8)Recupere todos os valores de atributo de qualquer cliente que é do sexo masculino.
SELECT *
FROM cliente
WHERE sexo = 'M';

-- 9)Exclua a conta 86340-2
DELETE FROM conta WHERE num_conta = '86340-2';