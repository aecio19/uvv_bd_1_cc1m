CREATE USER 'aecio'@'localhost' IDENTIFIED BY 'sql123';

GRANT ALL PRIVILEGES ON * . * TO 'aecio'@'localhost';

CREATE DATABASE uvv;

use uvv;

CREATE TABLE funcionario (
                cpf CHAR(11) NOT NULL,
                primeiro_nome VARCHAR(15) NOT NULL,
                nome_meio CHAR(1),
                ultimo_nome VARCHAR(15) NOT NULL,
                data_nascimento DATE,
                endereco VARCHAR(99),
                sexo CHAR(1),
                salario DECIMAL(10,2),
                cpf_supervisor CHAR(11) NOT NULL,
                numero_departamento INT NOT NULL,
                PRIMARY KEY (cpf)
);

ALTER TABLE funcionario COMMENT 'Tabela que armazena as informações dos funcionários.';

ALTER TABLE funcionario MODIFY COLUMN cpf CHAR(11) COMMENT 'CPF do funcionário. Será a PK da tabela.';

ALTER TABLE funcionario MODIFY COLUMN primeiro_nome VARCHAR(15) COMMENT 'Primeiro nome do funcionário.';

ALTER TABLE funcionario MODIFY COLUMN nome_meio CHAR(1) COMMENT 'Inicial do nome do meio.';

ALTER TABLE funcionario MODIFY COLUMN ultimo_nome VARCHAR(15) COMMENT 'Sobrenome do funcionário';

ALTER TABLE funcionario MODIFY COLUMN endereco VARCHAR(30) COMMENT 'Endereço do funcionário.';

ALTER TABLE funcionario MODIFY COLUMN sexo CHAR(1) COMMENT 'Sexo do funcionário.';

ALTER TABLE funcionario MODIFY COLUMN salario DECIMAL(10, 2) COMMENT 'Salário do funcionário.';

ALTER TABLE funcionario MODIFY COLUMN cpf_supervisor CHAR(11) COMMENT 'Será uma FK para a própria tabela (um auto-relacionamento).';

ALTER TABLE funcionario MODIFY COLUMN numero_departamento INTEGER COMMENT 'Número do departamento do funcionário.';


CREATE TABLE departamento (
                numero_departamento INT NOT NULL,
                nome_departamento VARCHAR(15) NOT NULL,
                cpf_gerente CHAR(11) NOT NULL,
                data_inicio_gerente DATE,
                PRIMARY KEY (numero_departamento)
);

ALTER TABLE departamento COMMENT 'Tabela que armazena as informaçoẽs dos departamentos.';

ALTER TABLE departamento MODIFY COLUMN numero_departamento INTEGER COMMENT 'Número do departamento. É a PK desta tabela.';

ALTER TABLE departamento MODIFY COLUMN nome_departamento VARCHAR(15) COMMENT 'Nome do departamento. Deve ser único.';

ALTER TABLE departamento MODIFY COLUMN cpf_gerente CHAR(11) COMMENT 'É uma FK para a tabela funcionários.';

ALTER TABLE departamento MODIFY COLUMN data_inicio_gerente DATE COMMENT 'Data do início do gerente no departamento.';


CREATE UNIQUE INDEX departamento_idx
 ON departamento
 ( nome_departamento );

CREATE TABLE projeto (
                numero_projeto INT NOT NULL,
                nome_projeto VARCHAR(15) NOT NULL,
                local_projeto VARCHAR(15),
                numero_departamento INT NOT NULL,
                PRIMARY KEY (numero_projeto)
);

ALTER TABLE projeto COMMENT 'Tabela que armazena as informações sobre os projetos dos departamentos.';

ALTER TABLE projeto MODIFY COLUMN numero_projeto INTEGER COMMENT 'Número do projeto. É a PK desta tabela.';

ALTER TABLE projeto MODIFY COLUMN nome_projeto VARCHAR(15) COMMENT 'Nome do projeto. Deve ser único.';

ALTER TABLE projeto MODIFY COLUMN local_projeto VARCHAR(15) COMMENT 'Localização do projeto.';

ALTER TABLE projeto MODIFY COLUMN numero_departamento INTEGER COMMENT 'Número do departamento. É uma FK para a tabela departamento.';


CREATE UNIQUE INDEX projeto_idx
 ON projeto
 ( nome_projeto );

CREATE TABLE trabalha_em (
                cpf_funcionario CHAR(11) NOT NULL,
                numero_projeto INT NOT NULL,
                horas DECIMAL(3,1) NOT NULL,
                PRIMARY KEY (cpf_funcionario, numero_projeto)
);

ALTER TABLE trabalha_em COMMENT 'Tabela para armazenar quais funcionários trabalham em quais projetos.';

ALTER TABLE trabalha_em MODIFY COLUMN cpf_funcionario CHAR(11) COMMENT 'PK desta tabela e é uma FK para a tabela funcionário.';

ALTER TABLE trabalha_em MODIFY COLUMN numero_projeto INTEGER COMMENT 'PK desta tabela e é uma FK para a tabela projeto.';

ALTER TABLE trabalha_em MODIFY COLUMN horas DECIMAL(3, 1) COMMENT 'Horas trabalhadas pelo funcionário neste projeto.';


CREATE TABLE localizacoes_departamento (
                numero_departamento INT NOT NULL,
                local VARCHAR(15) NOT NULL,
                PRIMARY KEY (numero_departamento, local)
);

ALTER TABLE localizacoes_departamento COMMENT 'Tabela que armazena as possíveis localizações dos departamentos.';

ALTER TABLE localizacoes_departamento MODIFY COLUMN numero_departamento INTEGER COMMENT 'PK desta tabela e é uma FK para a tabela departamento.';

ALTER TABLE localizacoes_departamento MODIFY COLUMN local VARCHAR(15) COMMENT 'Localização do departamento. Faz parte da PK desta tabela.';


CREATE TABLE dependente (
                nome_dependente VARCHAR(15) NOT NULL,
                cpf_funcionario CHAR(11) NOT NULL,
                sexo CHAR(1),
                data_nascimento DATE,
                parentesco VARCHAR(15),
                PRIMARY KEY (nome_dependente, cpf_funcionario)
);

ALTER TABLE dependente COMMENT 'Tabela que armazena as informações dos dependentes dos funcionários.';

ALTER TABLE dependente MODIFY COLUMN nome_dependente VARCHAR(15) COMMENT 'Nome do dependente. Faz parte da PK desta tabela.';

ALTER TABLE dependente MODIFY COLUMN cpf_funcionario CHAR(11) COMMENT 'PK desta tabela e é uma FK para a tabela funcionário.';

ALTER TABLE dependente MODIFY COLUMN sexo CHAR(1) COMMENT 'Sexo do dependente.';

ALTER TABLE dependente MODIFY COLUMN data_nascimento DATE COMMENT 'Data de nascimento do dependente.';

ALTER TABLE dependente MODIFY COLUMN parentesco VARCHAR(15) COMMENT 'Descrição do parentesco do dependente com o funcionário.';


ALTER TABLE dependente ADD CONSTRAINT funcionario_dependente_fk
FOREIGN KEY (cpf_funcionario)
REFERENCES funcionario (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE funcionario ADD CONSTRAINT funcionario_funcionario_fk
FOREIGN KEY (cpf_supervisor)
REFERENCES funcionario (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE departamento ADD CONSTRAINT new_table_new_table_fk
FOREIGN KEY (cpf_gerente)
REFERENCES funcionario (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE trabalha_em ADD CONSTRAINT new_table_trabalha_em_fk
FOREIGN KEY (cpf_funcionario)
REFERENCES funcionario (cpf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE localizacoes_departamento ADD CONSTRAINT departamento_localizacoes_departamento_fk
FOREIGN KEY (numero_departamento)
REFERENCES departamento (numero_departamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE projeto ADD CONSTRAINT new_table_projeto_fk
FOREIGN KEY (numero_departamento)
REFERENCES departamento (numero_departamento)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE trabalha_em ADD CONSTRAINT projeto_trabalha_em_fk
FOREIGN KEY (numero_projeto)
REFERENCES projeto (numero_projeto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('Jorge' , 'E', 'Brito', '88866555576', '1937-10-11', 'Rua das Horto, 35, São Paulo, SP', 'M', 55.000, '88866555576', 1);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('André' , 'V', 'Pereira', '98798798733', '1969-03-29', 'Rua Timbira,35,São Paulo,SP', 'M', 25.000, '98798798733', 4);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('Jennifer' , 'S', 'Souza', '98765432168', '1969-06-20', 'AvArthur,54,SantoAndré,SP', 'F', 43.000, '88866555576', 4);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('Fernando' , 'T', 'Wong', '33344555587', '1955-12-08', 'Rua da Lapa,34,São Paulo,SP', 'M', 40.000, '88866555576', 5);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('Alice' , 'J', 'Zelaya', '99988777767', '1968-01-19', 'Rua Souza Lima,35,Curitiba,PR', 'F', 25.000, '98765432168', 4);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('Joice' , 'A', 'Leite', '45345345376', '1972-07-31', 'Av.Lucas Obes,74,São Paulo,SP', 'F', 25.000, '33344555587', 5);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('Ronaldo' , 'K', 'Lima', '66688444476', '1962-09-15', 'Rua Rebouças,65,Piracicaba,SP', 'M', 38.000, '33344555587', 5);

insert into funcionario (primeiro_nome, nome_meio, ultimo_nome, cpf, data_nascimento, endereco, sexo, salario, cpf_supervisor, numero_departamento)
values ('João' , 'B', 'Silva', '12345678966', '1965-09-01', 'RuaDasFlores,751,SãoPaulo,SP', 'M', 30.000, '33344555587', 5);

insert into departamento (nome_departamento, numero_departamento, cpf_gerente, data_inicio_gerente)
values ('pesquisa', 5, '33344555587', '1988-05-22');

insert into departamento (nome_departamento, numero_departamento, cpf_gerente, data_inicio_gerente)
values ('administração', 4, '98765432168', '1995-01-01');

insert into departamento (nome_departamento, numero_departamento, cpf_gerente, data_inicio_gerente)
values ('matriz', 1, '88866555576', '1981-06-19');

insert into localizacoes_departamento (numero_departamento, local)
values (1, 'São Paulo');

insert into localizacoes_departamento (numero_departamento, local)
values (4, 'Mauá');

insert into localizacoes_departamento (numero_departamento, local)
values (5, 'Santo André');

insert into localizacoes_departamento (numero_departamento, local)
values (5, 'Itu');

insert into localizacoes_departamento (numero_departamento, local)
values (5, 'São Paulo');

insert into projeto (nome_projeto, numero_projeto, local_projeto, numero_departamento)
values ('ProdutoX', 1, 'Santo André', 5);

insert into projeto (nome_projeto, numero_projeto, local_projeto, numero_departamento)
values ('ProdutoY', 2, 'Itu', 5);

insert into projeto (nome_projeto, numero_projeto, local_projeto, numero_departamento)
values ('ProdutoZ', 3, 'São Paulo', 5);

insert into projeto (nome_projeto, numero_projeto, local_projeto, numero_departamento)
values ('Informatização', 10, 'Mauá', 4);

insert into projeto (nome_projeto, numero_projeto, local_projeto, numero_departamento)
values ('Reorganização', 20, 'São Pauo', 1);

insert into projeto (nome_projeto, numero_projeto, local_projeto, numero_departamento)
values ('Novosbenefícios', 30, 'Mauá', 4);

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('33344555587', 'Alicia', 'F', '1986-04-05', 'Filha');

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('33344555587', 'Tiago', 'M', '1986-10-25', 'Filho');

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('33344555587', 'Janaína', 'F', '1958-05-03', 'Esposa');

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('98765432168', 'Antonio', 'M', '1942-02-28', 'Marido');

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('12345678966', 'Michael', 'M', '1988-04-01', 'Filho');

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('12345678966', 'Alicia', 'F', '1988-12-30', 'Filha');

insert into dependente (cpf_funcionario, nome_dependente, sexo, data_nascimento, parentesco)
values ('12345678966', 'Elizabeth', 'F', '1967-05-05', 'Esposa');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('12345678966', 1, '32.5');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('12345678966', 2, '7.5');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('66688444476', 3, '40.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('45345345376', 1, '20.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('45345345376', 2, '20.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('33344555587', 2, '10.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('33344555587', 3, '10.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('33344555587', 10, '10.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('33344555587', 20, '10.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('99988777767', 30, '30.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('99988777767', 10, '10.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('98798798733', 10, '35.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('98798798733', 30, '5.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('98765432168', 30, '20.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('98765432168', 20, '15.0');

insert into trabalha_em (cpf_funcionario, numero_projeto, horas)
values ('88866555576', 20, '0.0');
