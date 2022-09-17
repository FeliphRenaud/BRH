/******dependentes *******/

select * from brh.colaborador; 

select * from brh.dependente; 


select colaborador.nome as "colaborador",  
        dependente.nome as "dependente", 
        dependente.data_nascimento as "aniver"
from  brh.colaborador colaborador 
inner join brh.dependente dependente 
on colaborador.matricula = dependente.colaborador
where  to_char (dependente.data_nascimento, 'MM') in ('04', '05', '06')
order by colaborador.nome, dependente.nome; 

/********Senioridade-Maior salario********/

select*from  brh.colaborador; 

select matricula,nome,salario,
(case when salario <=3000 then 'junior'
when salario> 3000 and salario <= 6000 then 'pleno'
when salario > 6000 and salario <= 20000 then 'senior'
else 'diretoria'end) 
from brh.colaborador
order by salario desc; 


Select nome,salario
from brh.colaborador 
where salario =(select max (salario) from brh.colaborador)
order by salario desc; 


/******colabprojeto******/

select * from brh.colaborador; 

select * from brh.projeto; 

select * from brh.papel; 

select * from brh.atribuicao;

select* from brh.departamento;

select depart.nome as deparatamento,projet.nome as projeto,  count (*) 
from brh.atribuicao atribu inner join brh.projeto projet on atribu.projeto = projet.id
inner join brh.colaborador colab on colab.matricula = atribu.colaborador
inner join brh.departamento depart on depart.sigla = colab.departamento
group by depart.nome, projet.nome order by depart.nome, projet.nome; 

select d.nome,d.nome,count(*) 
from brh.departamento d
inner join brh.colaborador c 
on d.sigla = c.departamento 
inner join brh.atribuicao a 
on a.colaborador = c.matricula
inner join brh.projeto p 
on p.id = a.projeto 
group by d.nome, p.nome
order by d.nome, p.nome;
