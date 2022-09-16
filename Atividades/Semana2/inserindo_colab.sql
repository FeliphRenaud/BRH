
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
  
  INSERT INTO ATRIBUICAO VALUES (
  'FL123',
  5,
  8  
  );
  
  SELECT * FROM PROJETO; 
  
  SELECT * FROM TELEFONE_COLABORADOR;
  
  INSERT INTO TELEFONE_COLABORADOR VALUES (
  "(61) 9 9999-9999",
  "FL123",
  "M" );
  
 