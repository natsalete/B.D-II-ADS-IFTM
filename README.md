# Banco de Dados II

### Superior De Tecnologia Em Análise E Desenvolvimento De Sistemas - 3° Período - IFTM

Este repositório contém todas as atividades práticas realizadas durante a disciplina de Banco de Dados II (BD II) no 3º período do curso Superior de Tecnologia em Análise e Desenvolvimento de Sistemas no IFTM.

## 

### Atividade 1

- Crie o modelo mostrado no slide anterior usando comandos DDL.

![Captura de tela 2024-03-18 131552](https://github.com/natsalete/B.D-II-ADS-IFTM/assets/135389319/1af29b46-bd35-4585-851b-3644344907bb)


Use comando alter table para: <br />
– Altere nome da coluna descrição da tabela editora para nome <br />
– Altere a coluna sexo para o tipo varchar(1); <br />
– Adicione uma restrição onde a coluna isbn tenha valor único <br />
– Adicione uma restrição onde valor padrão do livro seja R$10,00 <br />
– Exclua a coluna num_edição da tabela livro e recrie com nome de edição <br />
– Crie um nova tabela chamada grupo(id_grupo, nome). Adicione a tabela editora uma coluna para essa tabela através de um chave estrangeira. Ajuste o comando para que quando for deletada seja setado null na tabela editora. No caso do update seja
atualizado em cascata.

##

### Atividade 2

![Captura de tela 2024-03-22 123808](https://github.com/natsalete/B.D-II-ADS-IFTM/assets/135389319/9b00edee-26d4-4b23-9e89-844ce83a9333)

#### Parte 1.

- Crie o banco de dados acima usando DDL.

#### Parte 2.

- Crie código para a inserção dos dados abaixo.

![image](https://github.com/natsalete/B.D-II-ADS-IFTM/assets/135389319/9bbec159-814c-4110-b8e4-c299a7deada1)

#### Parte 3 - Consultas.

1) Altere a tabela cliente e crie um novo atributo chamado e-mail para armazenar os emails dos
clientes.
2) Recupere o cpf e o endereço do(s) cliente(s) cujo primeiro nome seja ‘c’.
3) Altere o número da agência 0562 para 6342.
4) Altere o registro do cliente Caetano K Lima acrescentando o email caetanolima@gmail.com.
5) Conceda à conta 23584-7 um aumento de 10 por cento no saldo.
6) Insira na tabela de Agência os seguintes dados:
    - Numero: 1333
    - Endereço: Rua João José da Silva, 486
    - Banco do Brasil . <br />
    
7) Recupere o número e o endereço de todas as agências do Banco do Brasil. Use o código do banco fixo na condição do where. <br />
8) Recupere todos os valores de atributo de qualquer cliente que é do sexo masculino. <br />
9) Exclua a conta 86340-2

##

### Atividade 3

![image](https://github.com/natsalete/B.D-II-ADS-IFTM/assets/135389319/2b3ff320-17cc-41f5-a21b-6d68b7c3900a)

-  Crie o banco de dados acima usando DDL.
1. Liste o nome, o CPF e a data de nascimento de todos os alunos.
2. Liste o nome, o CPF e o sexo de todos os alunos nascidos após 1990.
3. Liste o nome do curso com a maior carga horária.
4. Excluir todas as disciplinas com a carga horária inferior a 20 horas:
5. Liste o ID do aluno com a menor nota na disciplina de Programação Orientada a
Objetos.
6. Liste os IDS de todos os alunos que estão matriculados em um curso com carga
horária superior a 2400 horas:
7. Liste o nome, o nome do curso e a carga horária do curso de cada aluno.
8. Atualizar a carga horária do curso de Administração para 300 horas:

##

### Atividade 4

![image](https://github.com/natsalete/B.D-II-ADS-IFTM/assets/135389319/62f45edc-4e71-4844-843d-c002cc9e3508)

-  Crie o banco de dados acima usando DDL.
1. Insira na tabela de projeto o projeto “Novo Projeto”, localizado no “Buritis”, associando ao departamento 1.
2. Insira na tabela de funcionários o funcionário 'Edgar Marinho', que mora na rua 'R. Alameda, 111', nascido em '13/11/1959', ganha R$ 2000,00, não tem supervisor e está a associado ao departamento 2;
3. Atualize o salário do funcionário ‘Joao Silva’ para R$ 1000,00.
4. Liste o nome dos empregados do departamento 3 e também do 2 que possuem salário entre R$800,00 e R$1.200,00.
5. Liste o nome e o endereço de todos os empregados que pertencem ao departamento 'Pesquisa'.
6. Liste o nome e a data de nascimento do empregado 'Joao Silva'. Mostre no formato brasileiro com dois dígitos no ano. (pesquise a função date_format)
7. Liste o nome dos empregados que não possuem supervisores.
8. Liste o nome dos empregados, o nome dos seus departamentos e o nome dos projetos em que eles trabalham, ordenados pelo departamento e pelo nome do projeto.
9. Liste a soma, a média, o maior e o menor salário de todos os empregados.
10. Liste a soma, a média, o maior e o menor salário dos empregados do departamento 'Pesquisa'.
11. Liste o nome dos funcionários que não tem dependentes.
12. Para cada projeto localizado no 'Luxemburgo', liste o numero do projeto, o número do departamento que o controla e o nome, endereço e data de aniversário do gerente do departamento.
13. Liste o nome e localização dos projetos que não tem funcionários trabalhando neles.
14. Liste o nome dos funcionários que não tem dependentes e não estejam trabalhando em nenhum projeto.
15. Liste para cada empregado, o seu nome e o nome de seu supervisor.
16. Liste o nome de cada projeto com o número de empregados que trabalham no projeto.
17. Para cada projeto que possua mais de 2 empregados na equipe, liste o nome do projeto e a quantidade de empregados que trabalham no mesmo.,
18. Para cada departamento que possua mais do que 2 empregados, liste o nome do departamento e o nome dos empregados que ganham mais do que 800,00.

##

### Atividade 5

Usando o modelo de um sistema bancário da <span>ATIVIDADE 2</span> faça os seguintes exercícios:
1. Crie uma trigger para inserir na tabela telefone_cliente com um valor padrão de telefone depois
de inserir na tabela cliente algum registro
2. Crie uma trigger para que uma vez que seja deletado o cliente, seja deletado também o registro
na tabela telefone_cliente
3. Adicione ao modelo uma tabela de log (registros). Sempre que os dados de uma conta forem
atualizados será gerado um registro nessa tabela, os dados antes e depois da atualização. Crie
um campo timestamp para armazenar a operação.
4. Crie uma view com o nome do cliente, nome do banco, endereço da agência, e número da
conta.


##

### Atividade 6

Utilizando os comandos em SQL, faça o que se pede:
1. Crie um usuário my_user1;
2. Crie um usuário my_admin;
3. Crie/use dois bancos de dados bd1 e db2 quaisquer. Pode ser bancos de outros exercícios. Crie
algumas tabelas aleatoriamente.
4. Conceda acesso total para o usuário my_admin ao banco bd1.
5. Conceda apenas select, insert, delete e update para o usuário my_user no bd1.
6. Visualize as permissões dadas aos usuários.
7. Retire todas as permissões do usuário my_user.
8. Crie uma nova conexão com o usuário my_user e use o comando show tables;
9. Tente fazer uma operação de update usando o usuário my_user.
10. Crie um papel chamado papelAdmin e outro papelDev
11. Conceda ao papel papelAdmin todos os privilégios e para papelDev apenas as operações select,
insert, update e delete.
12. Crie dois usuários e atribuía a cada um, um dos papéis criados. Faça teste com os dois usuários
criados.

##

### Atividade 7

Usando nosso banco de dados de “Empresa”, resolva exercícios abaixo:
1. Dado uma taxa e um identificador do funcionário, crie um procedure que aplique a taxa
informada no salário do funcionário.
2. Crie uma tabela chamada hora_extra. Essa tabela deverá ter o identificador do funcionário e
campo para guardar quantas horas foram excedidas de um funcionário na jornada semanal.
Crie uma trigger que, ao ser adicionado um registro na tabela “trabalha” no banco, ela chamará
uma procedure que calcula a soma do número de horas trabalhadas em todos os projetos de um
funcionário. Caso a carga horária seja maior que 40, a trigger insere o valor excedente na tabela
de hora_extra.
