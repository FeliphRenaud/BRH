/*****procedure*****/

CREATE OR REPLACE PROCEDURE brh.insere_projeto (
colab_nome IN brh.projeto.nome%TYPE,
colab_respon in brh.projeto.responsavel%TYPE)
IS 
BEGIN INSERT INTO brh.projeto(
nome,
responsavel, 
inicio)
VALUES (
colab_nome,
colab_respon,
sysdate);
END; 

/******calculo de idade******/
SELECT * FROM BRH.COLABORADOR;
CREATE OR REPLACE FUNCTION brh.calcula_idade 
(p_data IN DATE ) RETURN FLOAT 
IS v_idade FLOAT;
BEGIN  
RETURN ( TRUNC ( MONTHS_BETWEEN(SYSDATE, p_data)/12));
END;

select brh.calcula_idade (TO_DATE ('16/07/1988','DD/MM/YYYY')) AS IDADE from dual; 

/********FINALIZA********/

SELECT * FROM brh.projeto; 

CREATE OR REPLACE FUNCTION brh.finaliza_projeto
(p_id in brh.projeto.id%TYPE)
RETURN brh.projeto.fim%TYPE
IS p_encerramento brh.projeto.fim%TYPE; 
BEGIN 
p_encerramento := sysdate;
UPDATE brh.projeto set fim = p_encerramento WHERE id= p_id;
RETURN p_encerramento; 
end; 



