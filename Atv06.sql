-- SHOW grants;
-- 1. Crie um usuário my_user1;
CREATE USER my_usser1 IDENTIFIED BY "123456778";

-- 2. Crie um usuário my_admin;
CREATE USER my_admin IDENTIFIED BY "nat1234";

-- 3. Crie/use dois bancos de dados bd1=universidade e db2 quaisquer. Pode ser bancos de outros exercícios. Crie algumas tabelas aleatoriamente.
-- 4. Conceda acesso total para o usuário my_admin ao banco bd1.
GRANT ALL ON universidade.* TO my_admin;

-- 5. Conceda apenas select, insert, delete e update para o usuário my_user no bd1.
GRANT SELECT, INSERT, DELETE, UPDATE ON universidade.* TO my_usser1;

-- 6. Visualize as permissões dadas aos usuários.
SHOW GRANTS FOR my_usser1;
SHOW GRANTS FOR my_admin;

-- 7. Retire todas as permissões do usuário my_user.
REVOKE SELECT, INSERT, DELETE, UPDATE ON universidade.* FROM my_usser1;

-- 8. Crie uma nova conexão com o usuário my_user e use o comando show tables;
GRANT SELECT ON universidade.* TO my_usser1;
SHOW TABLES;

-- 9. Tente fazer uma operação de update usando o usuário my_user.
-- Conceda permissões de UPDATE ao usuário my_usser1:
GRANT UPDATE ON universidade.* TO my_usser1;
-- Saia do MySQL e conecte-se novamente usando o usuário my_usser1:
Use universidade;
UPDATE aluno SET nome = 'Natalia S' WHERE id_aluno = 1;

-- 10. Crie um papel chamado papelAdmin e outro papelDev
CREATE ROLE papelAdmin;
CREATE ROLE papelDev;

-- 11. Conceda ao papel papelAdmin todos os privilégios e para papelDev apenas as operações select, insert, update e delete.
GRANT ALL ON universidade.* TO papelAdmin;
GRANT SELECT, INSERT, DELETE, UPDATE ON universidade.* TO papelDev;

-- 12. Crie dois usuários e atribuía a cada um, um dos papéis criados. Faça teste com os dois usuários criados.
CREATE USER userAdmin IDENTIFIED BY 'admin_password';
CREATE USER userDev IDENTIFIED BY 'dev_password';

GRANT papelAdmin TO userAdmin;
GRANT papelDev TO userDev;

-- Conecte-se ao MySQL como userAdmin:
-- Verifique as tabelas no banco de dados universidade:
USE universidade;
SHOW TABLES;
-- Tente fazer uma operação de UPDATE:
UPDATE aluno SET nome = 'Admin Nat' WHERE id = 1;

-- Conecte-se ao MySQL como userDev:
-- Verifique as tabelas no banco de dados universidade:
USE universidade;
SHOW TABLES;
-- Tente fazer uma operação de UPDATE:
UPDATE estudantes SET nome = 'Dev Nat' WHERE id = 2;
SHOW GRANTS FOR papelAdmin;