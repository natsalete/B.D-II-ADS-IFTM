create database exercicio1;
use exercicio1;

CREATE TABLE editora (
    cod_editora INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(45) NOT NULL,
    endereco VARCHAR(45)
);

CREATE TABLE livro (
    cod_livro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    isbn VARCHAR(45) NOT NULL,
    titulo VARCHAR(45) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    num_edicao INT,
    preco FLOAT NOT NULL,
    editora_cod_editora INT NOT NULL,
    FOREIGN KEY (editora_cod_editora)
        REFERENCES editora (cod_editora)
        ON UPDATE RESTRICT ON DELETE RESTRICT
);

CREATE TABLE autor (
    cod_autor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    sexo CHAR,
    data_nascimento DATE NOT NULL
);

CREATE TABLE livro_autor (
    cod_livro INT NOT NULL,
    cod_autor INT NOT NULL,
    FOREIGN KEY (cod_livro)
        REFERENCES livro (cod_livro),
    FOREIGN KEY (cod_autor)
        REFERENCES autor (cod_autor),
    CONSTRAINT pk_la PRIMARY KEY livro_autor (cod_livro , cod_autor)
);

-- Altere nome da coluna descrição da tabela editora para nome
alter table editora rename column descricao to nome;
-- alter table editora change column nome nome varchar(45) not null;

-- Altere a coluna sexo para o tipo varchar(1);
alter table autor change column sexo sexo varchar(1);
-- alter table autor modify column sexo varchar(1);

-- Adicione uma restrição onde a coluna isbn tenha valor único
alter table livro add unique (isbn);
-- alter table livro add constraint unique isbn;

-- Adicione uma restrição onde valor padrão do livro seja R$10,00
alter table livro alter column preco set default 10.00;
-- alter table livro modify column preco flaot default 10.00;


-- Exclua a coluna num_edicao da tabela livro
alter table livro drop column num_edicao;
-- Recriar a coluna com o nome edição  
alter table livro add column edicao int;

-- Criando a tabela grupo
CREATE TABLE grupo (
    id_grupo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL
);
-- Adicionando a coluna cod_grupo à tabela editora
alter table editora add column cod_grupo int;
-- Adicionando a chave estrangeira à coluna cod_grupo
alter table editora add constraint fk_editora_grupo foreign key (cod_grupo)
references grupo (id_grupo)
on delete set null
on update cascade;
