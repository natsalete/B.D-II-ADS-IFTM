CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamento (
    ID_Depto NUMERIC(2) NOT NULL,
    NomeDepto VARCHAR(30) NOT NULL,
    ID_Gerente NUMERIC(4) NOT NULL,
    CONSTRAINT pk_depto PRIMARY KEY (ID_Depto),
    CONSTRAINT uk_nome UNIQUE (NomeDepto)
);

CREATE TABLE  funcionario (
	ID_Func NUMERIC(4) NOT NULL,
    NomeFunc VARCHAR(30) NOT NULL,
    Endereco VARCHAR(50) NOT NULL,
    DataNasc DATE NOT NULL,
    Sexo CHAR(1) NOT NULL,
    Salario NUMERIC(8,2) NOT NULL,
    ID_Superv NUMERIC(4) NULL,
    ID_Depto NUMERIC(2) NOT NULL,
    CONSTRAINT pk_func PRIMARY KEY (ID_Func),
    CONSTRAINT ck_sexo CHECK (Sexo='M' or Sexo='F')
);

CREATE TABLE Projeto (
    ID_Proj NUMERIC(4) NOT NULL,
    NomeProj VARCHAR(30) NOT NULL,
    Localizacao VARCHAR(30) NULL,
    ID_Depto NUMERIC(2) NOT NULL,
    CONSTRAINT pk_proj PRIMARY KEY (ID_Proj),
    CONSTRAINT uk_nomeProj UNIQUE (NomeProj)
);

CREATE TABLE Dependente (
    ID_Dep NUMERIC(6) NOT NULL,
    ID_Func NUMERIC(4) NOT NULL,
    NomeDep VARCHAR(30) NOT NULL,
    DataNasc DATE NOT NULL,
    Sexo CHAR(1) NOT NULL,
    Parentesco CHAR(15) NULL,
    CONSTRAINT pk_depend PRIMARY KEY (ID_Dep, ID_Func),
    CONSTRAINT ck_sexo_dep CHECK (Sexo='M' or Sexo='F')
);

CREATE TABLE Trabalha (
    ID_Func NUMERIC(4) NOT NULL,
    ID_Proj NUMERIC(4) NOT NULL,
    NumHoras NUMERIC(6,1) NULL,
    CONSTRAINT pk_trab PRIMARY KEY (ID_Func,ID_Proj)
);

INSERT INTO Funcionario
VALUES (1,'Joao Silva','R. Guaicui, 175', str_to_date('01/02/1955',"%d/%m/%Y"),'M',500,2,1);
INSERT INTO Funcionario
VALUES (2,'Frank Santos','R. Gentios, 22',str_to_date('02/02/1966',"%d/%m/%Y"),'M',1000,8,1);
INSERT INTO Funcionario
VALUES (3,'Alice Pereira','R. Curitiba, 11',str_to_date('15/05/1970',"%d/%m/%Y"),'F',700,4,3);
INSERT INTO Funcionario
VALUES (4,'Junia Mendes','R. Espirito Santos, 123',str_to_date('06/07/1976',"%d/%m/%Y"),'F',1200,8,3);
INSERT INTO Funcionario
VALUES (5,'Jose Tavares','R. Irai, 153',str_to_date('07/10/1975',"%d/%m/%Y"),'M',1500,2,1);
INSERT INTO Funcionario
VALUES (6,'Luciana Santos','R. Irai, 175',str_to_date('07/10/1960',"%d/%m/%Y"),'F',600,2,1);
INSERT INTO Funcionario
VALUES (7,'Maria Ramos','R. C. Linhares, 10',str_to_date('01/11/1965',"%d/%m/%Y"),'F',1000,4,3);
INSERT INTO Funcionario
VALUES (8,'Jaime Mendes','R. Bahia, 111',str_to_date('25/11/1960',"%d/%m/%Y"),'M',2000,NULL,2);

INSERT INTO Departamento
VALUES (1,'Pesquisa',2);
INSERT INTO Departamento
VALUES (2,'Administracao',8);
INSERT INTO Departamento
VALUES (3,'Construcao',4);

INSERT INTO Dependente
VALUES (1,2,'Luciana',str_to_date('05/11/1990',"%d/%m/%Y"),'F','Filha');
INSERT INTO Dependente
VALUES (2,2,'Paulo',str_to_date('11/11/1992',"%d/%m/%Y"),'M','Filho');
INSERT INTO Dependente
VALUES (3,2,'Sandra',str_to_date('05/12/1996',"%d/%m/%Y"),'F','Filha');
INSERT INTO Dependente
VALUES (4,4,'Mike',str_to_date('05/11/1997',"%d/%m/%Y"),'M','Filho');
INSERT INTO Dependente
VALUES (5,1,'Max',str_to_date('11/05/1979',"%d/%m/%Y"),'M','Filho');
INSERT INTO Dependente
VALUES (6,1,'Rita',str_to_date('07/11/1985',"%d/%m/%Y"),'F','Filha');
INSERT INTO Dependente
VALUES (7,1,'Bety',str_to_date('15/12/1960',"%d/%m/%Y"),'F','Esposa');

INSERT INTO Projeto
VALUES (1,'ProdX','Savassi',1);
INSERT INTO Projeto
VALUES (2,'ProdY','Luxemburgo',1);
INSERT INTO Projeto
VALUES (3,'ProdZ','Centro',1);
INSERT INTO Projeto
VALUES (10,'Computacao','C. Nova',3);
INSERT INTO Projeto
VALUES (20,'Organizacao','Luxemburgo',2);
INSERT INTO Projeto
VALUES (30,'N. Beneficios','C. Nova',1);

INSERT INTO Trabalha
VALUES (1,1,32.5);
INSERT INTO Trabalha
VALUES (1,2,7.5);
INSERT INTO Trabalha
VALUES (5,3,40.0);
INSERT INTO Trabalha
VALUES (6,1,20.0);
INSERT INTO Trabalha
VALUES (6,2,20.0);
INSERT INTO Trabalha
VALUES (2,2,10.0);
INSERT INTO Trabalha
VALUES (2,3,10.0);
INSERT INTO Trabalha
VALUES (2,10,10.0);
INSERT INTO Trabalha
VALUES (2,20,10.0);
INSERT INTO Trabalha
VALUES (3,30,30.0);
INSERT INTO Trabalha
VALUES (3,10,10.0);
INSERT INTO Trabalha
VALUES (7,10,35.0);
INSERT INTO Trabalha
VALUES (7,30,5.0);
INSERT INTO Trabalha
VALUES (4,20,15.0);
INSERT INTO Trabalha
VALUES (8,20,NULL);


ALTER TABLE Funcionario
ADD CONSTRAINT fk_func_depto FOREIGN KEY (ID_Depto) REFERENCES Departamento (ID_Depto);

ALTER TABLE Funcionario
ADD CONSTRAINT fk_func_superv FOREIGN KEY (ID_Superv) REFERENCES Funcionario (ID_Func);

ALTER TABLE Departamento
ADD CONSTRAINT fk_depto_func FOREIGN KEY (ID_Gerente) REFERENCES Funcionario (ID_Func);

ALTER TABLE Projeto
ADD CONSTRAINT fk_proj_depto FOREIGN KEY (ID_Depto) REFERENCES Departamento (ID_Depto);

ALTER TABLE Dependente
ADD CONSTRAINT fk_dep_func FOREIGN KEY (ID_Func) REFERENCES Funcionario (ID_Func) ON DELETE CASCADE;

ALTER TABLE Trabalha
ADD CONSTRAINT fk_trab_func FOREIGN KEY (ID_Func) REFERENCES Funcionario (ID_Func) ON DELETE CASCADE;

ALTER TABLE Trabalha
ADD CONSTRAINT fk_trab_proj FOREIGN KEY (ID_Proj) REFERENCES Projeto (ID_Proj) ON DELETE CASCADE;


/*SELECT * FROM funcionario;
SELECT * FROM departamento;
SELECT * FROM dependente;
SELECT * FROM projeto;
SELECT * FROM trabalha;*/

-- 1. Insira na tabela de projeto o projeto “Novo Projeto”, localizado no “Buritis”, associando ao departamento 1.
INSERT INTO projeto
VALUES (4,'Novo Projeto','Buritis',1);

-- 2. Insira na tabela de funcionários o funcionário 'Edgar Marinho', que mora na rua 'R. Alameda, 111', nascido em '13/11/1959', ganha R$ 2000,00, não tem supervisor e está a associado ao departamento 2;
INSERT INTO funcionario
VALUES (9,'Edgar Marinho','R. Alameda, 111', str_to_date('13/11/1959',"%d/%m/%Y"),'M',2000,NULL,2);

-- 3. Atualize o salário do funcionário ‘Joao Silva’ para R$ 1000,00.
SET SQL_SAFE_UPDATES = 0; -- Desativar o Modo de Atualização Segura Temporariamente
UPDATE funcionario SET Salario = 1000 WHERE NomeFunc = 'Joao Silva';

-- 4. Liste o nome dos empregados do departamento 3 e também do 2 que possuem salário entre R$800,00 e R$1.200,00.
SELECT func.NomeFunc 
FROM funcionario func
JOIN departamento dep ON func.ID_Depto = dep.ID_Depto
WHERE (dep.ID_Depto = 3 OR dep.ID_Depto = 2)
AND func.Salario > 800 AND func.Salario < 1200;

-- 5. Liste o nome e o endereço de todos os empregados que pertencem ao departamento 'Pesquisa'.
SELECT func.NomeFunc, func.Endereco
FROM funcionario func
JOIN departamento dep ON func.ID_Depto = dep.ID_Depto
WHERE dep.NomeDepto = 'Pesquisa';

-- 6. Liste o nome e a data de nascimento do empregado 'Joao Silva'. Mostre no formato brasileiro com dois dígitos no ano. (pesquise a função date_format)
SELECT NomeFunc, DATE_FORMAT(DataNasc, '%d/%m/%y') AS DataNasc_Brasil
FROM funcionario
WHERE NomeFunc = 'Joao Silva';

-- 7. Liste o nome dos empregados que não possuem supervisores.
SELECT NomeFunc
FROM funcionario 
WHERE ID_Superv IS NULL;

-- 8. Liste o nome dos empregados, o nome dos seus departamentos e o nome dos projetos em que eles trabalham, ordenados pelo departamento e pelo nome do projeto.
SELECT func.NomeFunc, dep.NomeDepto, proj.NomeProj
FROM funcionario func
JOIN departamento dep ON func.ID_Depto = dep.ID_Depto
JOIN Projeto proj ON dep.ID_Depto = proj.ID_Depto
ORDER BY dep.NomeDepto, proj.NomeProj;

-- 9. Liste a soma, a média, o maior e o menor salário de todos os empregados.
SELECT SUM(Salario) AS SUMSalario, AVG(Salario) AS MEDSalario, MAX(Salario) AS MAXSalrio, MIN(Salario) AS MINSalario
FROM  funcionario;

-- 10. Liste a soma, a média, o maior e o menor salário dos empregados do departamento 'Pesquisa'.
SELECT SUM(func.Salario) AS SUMSalario, AVG(func.Salario) AS MEDSalario, MAX(func.Salario) AS MAXSalrio, MIN(func.Salario) AS MINSalario
FROM funcionario func
JOIN departamento dep ON func.ID_Depto = dep.ID_Depto
WHERE dep.NomeDepto = 'Pesquisa';

-- 11. Liste o nome dos funcionários que não tem dependentes.
SELECT func.NomeFunc
FROM funcionario func
LEFT JOIN dependente dept ON func.ID_Func = dept.ID_Func
WHERE dept.ID_Func IS NULL;

-- 12. Para cada projeto localizado no 'Luxemburgo', liste o numero do projeto, o número do
-- departamento que o controla e o nome, endereço e data de aniversário do gerente do departamento.
SELECT proj.ID_Proj, dep.ID_Depto, dep.NomeDepto, func.NomeFunc, func.Endereco, func.DataNasc
FROM projeto proj
JOIN  departamento dep ON proj.ID_Depto = dep.ID_Depto
JOIN funcionario func ON dep.ID_Gerente = func.ID_Func
WHERE proj.Localizacao = 'Luxemburgo';

-- 13. Liste o nome e localização dos projetos que não tem funcionários trabalhando neles.
SELECT proj.NomeProj, proj.Localizacao
FROM projeto proj
LEFT JOIN trabalha t ON proj.ID_Proj = t.ID_Proj
WHERE t.ID_Proj IS NULL;

-- 14. Liste o nome dos funcionários que não tem dependentes e não estejam trabalhando em nenhum projeto.
SELECT func.NomeFunc
FROM funcionario func
LEFT JOIN dependente dept ON func.ID_Func = dept.ID_Func
LEFT JOIN trabalha t ON func.ID_Func = t.ID_Func
WHERE dept.ID_Func IS NULL AND t.ID_Proj IS NULL;

-- 15. Liste para cada empregado, o seu nome e o nome de seu supervisor.
SELECT emp.NomeFunc AS NomeEmpregado, sup.NomeFunc AS NomeSupervisor
FROM funcionario emp
LEFT JOIN funcionario sup ON emp.ID_Superv = sup.ID_Func;

-- 16. Liste o nome de cada projeto com o número de empregados que trabalham no projeto.
SELECT proj.NomeProj, COUNT(t.ID_Func) AS NumeroEmpregados
FROM projeto proj
LEFT JOIN trabalha t ON proj.ID_Proj = t.ID_Proj
GROUP BY proj.NomeProj;

-- 17. Para cada projeto que possua mais de 2 empregados na equipe, liste o nome do projeto e a quantidade de empregados que trabalham no mesmo.,
SELECT proj.NomeProj, COUNT(t.ID_Func) AS NumerosEmpregados
FROM projeto proj
LEFT JOIN trabalha t ON proj.ID_Proj = t.ID_Proj
GROUP BY proj.NomeProj
HAVING COUNT(t.ID_Func) > 2;

-- 18. Para cada departamento que possua mais do que 2 empregados, liste o nome do departamento e o nome dos empregados que ganham mais do que 800,00.
SELECT dep.NomeDepto, func.NomeFunc
FROM departamento dep
JOIN funcionario func ON dep.ID_Depto = func.ID_Depto
WHERE func.Salario > 800
AND dep.ID_Depto IN (
    SELECT ID_Depto
    FROM funcionario
    GROUP BY ID_Depto
    HAVING COUNT(ID_Func) > 2
);
