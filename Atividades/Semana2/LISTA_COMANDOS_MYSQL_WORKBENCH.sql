*/ LISTA DE COMANDOS UTILIZADOS NAS ATIVIDADES \* 

RELATORIO DE DEPARTAMENTOS 

SELECT * FROM DEPARTAMENTO ;

SELECT SIGLA, NOME FROM DEPARTAMENTO ORDER BY NOME; 

__________________________________________________________

RELATORIO DE DEPENDENTES 

SELECT * FROM COLABORADOR; 

SELECT * FROM DEPENDENTE; 

SELECT DEPENDENTE.NOME, DEPENDENTE.PARENTESCO, DEPENDENTE.DATA_NASCIMENTO, COLABORADOR.NOME
FROM DEPENDENTE, COLABORADOR 
WHERE DEPENDENTE.COLABORADOR= COLABORADOR.MATRICULA
ORDER BY COLABORADOR.NOME;

_____________________________________________________________

INSERINDO COLABORADOR 


SET FOREIGN_KEY_CHECKS = 0; 


INSERT INTO PAPEL VALUES  (

8,
"ESPECIALISTA_DE_ NEGOCIOS"
);

 SELECT * FROM PAPEL ORDER BY ID;
 
 SELECT * FROM DEPARTAMENTO ORDER BY NOME;
 
 SELECT * FROM PROJETO; 
 
 INSERT INTO DEPARTAMENTO VALUES (
  
  "SpeNeg",
  " Departamento de negocios",
  " ",
  "DIR" ); 
  
  INSERT INTO COLABORADOR VALUES (
  "FL123",
  "033.333.033-33",
  "Fulano de Tal",
  "fulano@email.com",
	"fulano@corp.com",
    5000.00,
    "SpeNeg",
    "71222-100",
    "Casa Rosada"
  );
  
  select * from colaborador; 
  
INSERT INTO PROJETO VALUES(
  5,
  "BL",
  "FL123",
  20220804,
  20260804); 
  
  SELECT * FROM PROJETO; 
  
  SELECT * FROM TELEFONE_COLABORADOR;
  
  INSERT INTO TELEFONE_COLABORADOR VALUES (
  "(61) 9 9999-9999",
  "FL123",
  "M" );
  
  
  _______________________________________________________
  
  EXCLUINDO SECAP 
  
  SELECT * FROM DEPARTAMENTO; 

SELECT * FROM ATRIBUICAO; 

SELECT * FROM COLABORADOR;

SELECT * FROM TELEFONE_COLABORADOR; 

SET FOREIGN_KEY_CHECKS = 0; 

delete from atribuicao 
 where colaborador in ('H123', 'M123', 'R123', 'W123');
  
delete from telefone_colaborador 
 where colaborador in ('H123', 'M123', 'R123', 'W123');
 
 SELECT * FROM DEPENDENTE; 
  
delete from dependente
 where colaborador in ('H123', 'M123', 'R123', 'W123'); 
 
 SELECT * FROM DEPARTAMENTO; 

update departamento 
   set chefe = 'A123'
 where sigla = 'SECAP';
 
delete from colaborador 
 where departamento = 'SECAP';
 
delete from departamento 
 where sigla = 'SECAP';

SELECT * FROM DEPARTAMENTO; 

