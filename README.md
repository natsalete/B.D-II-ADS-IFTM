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
