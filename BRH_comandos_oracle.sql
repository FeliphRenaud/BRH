/*departamento*/

select sigla, nome from brh.departamento
order by nome; 

/*dependente*/

select * from brh.dependente; 
select * from brh.colaborador; 

select brh.dependente.nome, brh.dependente.parentesco, brh.dependente.data_nascimento, brh.colaborador.nome
from brh.dependente, brh.colaborador
where brh.dependente.colaborador = brh.colaborador.matricula
order by brh.colaborador.nome; 

/*novo colab*/ 
 
 select * from brh.atribuicao;
 
 select * from brh.papel; 
 
 select * from brh.departamento;
 
 select * from brh.colaborador; 
 
 select * from brh.projeto; 
 
 select * from brh.endereco; 
 
 select * from brh.telefone_colaborador; 
 
insert into brh.papel ( ID , NOME )
values ('8', 'especialista de negocios');

insert into brh.colaborador 
( matricula, cpf, nome, email_pessoal, email_corporativo, salario, departamento, cep, complemento_endereco)
values ( 'FL123', '033.333.033-33', ' Fulano de Tal', 'fulano@email.com', 'fulano@corp.com', '5000', 'SpeNeg', '71222-100', 'casa rosada');

insert into brh.endereco 
( cep, uf, cidade, bairro, logradouro)
values ( '71222-100', 'DF', 'Brasilia', 'SIA', 'trecho_10');

insert into brh.departamento 
( sigla, nome, chefe, departamento_superior)
values ( 'SpeNeg', 'Departamento de Negocios', 'FL123', 'DIR');

insert into brh.projeto 
( id, nome, responsavel, inicio, fim)
values ( '9', 'BI', 'FL123', '04/08/2022', '04/08/2026');

insert into brh.atribuicao 
( colaborador, projeto, papel)
values ( 'FL123', '9', '8'); 

insert into brh.telefone_colaborador
( colaborador, numero, tipo)
values ( 'FL123', '(61) 99999-9999)', 'M');

select brh.colaborador.nome, brh.colaborador.cpf, brh.colaborador.departamento, brh.departamento.chefe 
from brh.colaborador,brh.departamento 
where brh.colaborador.matricula = brh.departamento.chefe 
order by nome; 

/* exlusão setor */ 
 
 set foreign_key_checks = 0; 
 
 select * from brh.departamento ; 
 
 select * from brh.atribuicao;
 
 select * from brh.colaborador; 
 
 select * from brh.dependente;
 
 select * from brh.telefone_colaborador;
 
 select * from brh.projeto;
 
 delete from brh.atribuicao
 where colaborador in ( 'H123', 'M123', 'R123', 'W123'); 
 
 delete from brh.telefone_colaborador
 where colaborador in ( 'H123', 'M123', 'R123', 'W123');
 
 delete from brh.dependente
 where colaborador in ( 'H123', 'M123', 'R123', 'W123');
 
 update brh.departamento 
 set chefe = 'I123'
 where sigla = 'secap' ;
 
 delete from brh.colaborador
 where departamento = 'secap';
 
 delete from brh.departamento 
 where sigla = 'secap';
 
 select * from brh.departamento; 
 
 
 

