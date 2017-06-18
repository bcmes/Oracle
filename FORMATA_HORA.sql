/*
SELECT * FROM abatfun WHERE chapa='05334' AND DATA='07-JAN-2010'
SELECT * FROM gcampos WHERE tabela='ABATFUN' ORDER BY coluna

SELECT 
TO_CHAR(TRUNC((batida/60), 0),'09') 
||':'||
TO_CHAR(TRUNC(TO_NUMBER(SUBSTR(TO_CHAR((batida)/60), INSTR((batida/60),',')))*60,0),'09') 
AS HORA
FROM abatfun WHERE chapa='05334' AND DATA='07-JAN-2010'
*/


CREATE OR REPLACE FUNCTION FORMATA_HORA (hora_minutos IN NUMBER(10,0)) RETURN VARCHAR IS
RETORNO VARCHAR(6);
BEGIN

 SELECT 
 TO_CHAR(TRUNC((hora_minutos/60), 0),'09') 
 ||':'||
 TO_CHAR(TRUNC(TO_NUMBER(SUBSTR(TO_CHAR((hora_minutos)/60), INSTR((hora_minutos/60),',')))*60,0),'09') 
 INTO RETORNO
 FROM dual;

 RETURN RETORNO;

END;

--Select FORMATA_HORA(365) from dual;
