use uvv;

--*Questão 01- Saber a média salário de cada departamento*
select avg(funcionario.salario) as media_salario, departamento.nome_departamento 
from funcionario 
inner join departamento 
on departamento.numero_departamento = funcionario.numero_departamento 
group by departamento.nome_departamento;


--*Questão 02- Saber a média salário por sexo*
select avg(funcionario.salario) as media_salario, funcionario.sexo
from funcionario
group by funcionario.sexo;

--*Questão 03- Obter o relatório que lista o nome dos departamentos e suas informaçoes*
select nome_departamento, concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, data_nascimento,
floor(DATEDIFF(CURDATE(),data_nascimento)/365.25) as idade, 
salario
from funcionario inner join departamento 
where funcionario.numero_departamento = departamento.numero_departamento order by nome_departamento;

--*Questão 04- Obter um relatório que mostra informações dos funcionários e o salário com reajuste*
select concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, floor(datediff(curdate(), data_nascimento)/365.25) as idade, 
salario, cast((salario*1.2) as decimal(10,2)) as salario_reajuste from funcionario 
where salario < 35000
union
select concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome, floor(datediff(curdate(), data_nascimento)/365.25) as idade, 
salario as salario, cast((salario*1.15) as decimal(10,2)) as salario_reajuste from funcionario 
where salario >= 35000;

--*Questão 05- Obter um relatório com o nome do gerente e funcionários de cada departamento*
select nome_departamento, a.primeiro_nome as gerente, funcionario.primeiro_nome, salario
from departamento inner join funcionario, 
(select primeiro_nome, cpf from funcionario inner join departamento where funcionario.cpf = departamento.cpf_gerente) as a
where departamento.numero_departamento = funcionario.numero_departamento and a.cpf = departamento.cpf_gerente 
order by departamento.nome_departamento asc, funcionario.salario desc;

--*Questão 06- Obter o nome dos funcionários que possuem dependentes*
select concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, departamento.nome_departamento,
dependente.nome_dependente, floor(datediff(curdate(), dependente.data_nascimento)/365.25) as idade_dependente,
case when dependente.sexo = 'M' then 'Masculino' when dependente.sexo = 'm' then 'Masculino'
when dependente.sexo = 'F' then 'Feminino' when dependente.sexo = 'f' then 'Feminino' end as sexo_dependente
from funcionario 
inner join departamento on funcionario.numero_departamento = departamento.numero_departamento 
inner join dependente ON dependente.cpf_funcionario = funcionario.cpf;

--*Questão 07- Obter informações dos funcionários que não possuem dependentes*
select distinct concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, departamento.nome_departamento,
cast((funcionario.salario) as decimal(10,2)) as salario from funcionario
inner join departamento  inner join dependente 
where departamento.numero_departamento = funcionario.numero_departamento and
funcionario.cpf not in (select dependente.cpf_funcionario from dependente);


--*Questão 08- Obter os projetos de cada departamento e seus respectivos funcionários*
select departamento.nome_departamento, projeto.nome_projeto,
concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, trabalha_em.horas
from funcionario inner join departamento inner join projeto inner join trabalha_em
where departamento.numero_departamento = funcionario.numero_departamento and
projeto.numero_projeto = trabalha_em.numero_projeto and funcionario.cpf = trabalha_em.cpf_funcionario order by projeto.numero_projeto;

--*Questão 09- Relatório que soma o total de horas e o total de projetos de cada departamento*
select departamento.nome_departamento, projeto.nome_projeto, sum(trabalha_em.horas) as total_horas
from departamento inner join projeto inner join trabalha_em
where departamento.numero_departamento = projeto.numero_departamento AND projeto.numero_projeto = trabalha_em.numero_projeto group by projeto.nome_projeto;

--*Questão 10- Média salarial de cada departamento*
select avg(funcionario.salario) as media_salario, departamento.nome_departamento 
from funcionario 
inner join departamento 
on departamento.numero_departamento = funcionario.numero_departamento 
group by departamento.nome_departamento;


--*Questão 11- Saber o valor pago por hora em cada projeto, com o nome completo do funcionário, nome do projeto e o valor total que o funcionario receberá*
select concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, projeto.nome_projeto,
cast((trabalha_em.horas*50) as decimal(10,2)) as salario_atualizado
from funcionario inner join projeto inner join trabalha_em 
where funcionario.cpf = trabalha_em.cpf_funcionario and projeto.numero_projeto = trabalha_em.numero_projeto group by funcionario.primeiro_nome;

--*Questão 12- Saber os funcionários que não possuem nenhuma hora trabalhada*
select departamento.nome_departamento, projeto.nome_projeto,
concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo, trabalha_em.horas
from funcionario inner join departamento inner join projeto inner join trabalha_em 
where funcionario.cpf = trabalha_em.cpf_funcionario and projeto.numero_projeto = trabalha_em.numero_projeto 
and (trabalha_em.horas = 0) group by funcionario.primeiro_nome;

--*Questão 13- Obter uma lista das pessoas a serem presenteadas, contendo nome completo, idade e sexo*
select concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo,
case when sexo = 'M' then 'Masculino' when sexo = 'm' then 'Masculino'
when sexo = 'f' then 'Feminino' when sexo = 'f' then 'Feminino' end,
floor(datediff(curdate(), funcionario.data_nascimento)/365.25) as idade
from funcionario 
union
select dependente.nome_dependente,
case when sexo = 'M' then 'Masculino' when sexo = 'm' then 'Masculino'
when sexo = 'F' then 'Feminino' when sexo = 'f' then 'Feminino' end,
floor(datediff(curdate(), dependente.data_nascimento)/365.25) as idade
from dependente order by idade;

--*Questão 14- Saber o número de funcionários em cada departamento*
select d.nome_departamento as departamento, count(f.numero_departamento) as numero_funcionario
from funcionario f inner join departamento d
where f.numero_departamento = d.numero_departamento group by d.nome_departamento;

--*Questão 15- Obter o relatório com nome completo do funcionário, o departamento e o nome do projeto*
select distinct concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo,
departamento.nome_departamento, 
projeto.nome_projeto
from departamento inner join projeto inner join trabalha_em inner join funcionario 
where departamento.numero_departamento = funcionario.numero_departamento and projeto.numero_projeto = trabalha_em.numero_projeto and
trabalha_em.cpf_funcionario = funcionario.cpf
union
select distinct concat(funcionario.primeiro_nome, ' ', funcionario.nome_meio, ' ', funcionario.ultimo_nome) as nome_completo,
departamento.nome_departamento, 
'Nenhum projeto' as projeto
from departamento inner join projeto inner join trabalha_em inner join funcionario 
where departamento.numero_departamento = funcionario.numero_departamento and projeto.numero_projeto = trabalha_em.numero_projeto and
(funcionario.cpf not in (select trabalha_em.cpf_funcionario from trabalha_em));
