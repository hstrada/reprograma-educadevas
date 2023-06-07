USE SENAI_HROADS;

--4.	Atualizar o nome do personagem Fer8 para Fer7;
SELECT * FROM PERSONAGENS ORDER BY NOME;
UPDATE PERSONAGENS SET NOME = 'Fer7' WHERE ID = 3; 

--5.	Atualizar o nome da classe de Necromante para Necromancer;
SELECT * FROM CLASSES;
UPDATE CLASSES SET NOME = 'Necromancer' WHERE ID = 5; 

--6.	Selecionar todos os personagens;
SELECT * FROM PERSONAGENS;

--7.	Selecionar todos as classes;
SELECT * FROM CLASSES;

--8.	Selecionar somente o nome das classes;
SELECT NOME FROM CLASSES;

--9.	Selecionar todas as habilidades;
SELECT * FROM HABILIDADES;

--10.	Realizar a contagem de quantas habilidades estão cadastradas;
SELECT COUNT(*) AS QUANTIDADE_HABILIDADES FROM HABILIDADES;

--11.	Selecionar somente os id’s das habilidades classificando-os por ordem crescente;
SELECT ID FROM HABILIDADES ORDER BY ID;

--12.	Selecionar todos os tipos de habilidades;
SELECT * FROM TIPOS_HABILIDADES;

--13.	Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
SELECT * FROM HABILIDADES H INNER JOIN TIPOS_HABILIDADES TH ON H.ID_TIPO_HABILIDADE = TH.ID;

--14.	Selecionar todos os personagens e suas respectivas classes;
SELECT * FROM PERSONAGENS P INNER JOIN CLASSES C ON P.ID_CLASSE = C.ID;

--15.	Selecionar todos os personagens e as classes (mesmo que elas não tenham correspondência em personagens);
SELECT * FROM PERSONAGENS P RIGHT JOIN CLASSES C ON P.ID_CLASSE = C.ID;

--16.	Selecionar todas as classes e suas respectivas habilidades;
SELECT * FROM CLASSES C INNER JOIN CLASSES_HABILIDADES CH ON C.ID = CH.ID_CLASSE INNER JOIN HABILIDADES H ON CH.ID_HABILIDADE = H.ID;

--17.	Selecionar todas as habilidades e suas classes (somente as que possuem correspondência);
SELECT * FROM HABILIDADES H INNER JOIN CLASSES_HABILIDADES CH ON H.ID = CH.ID_HABILIDADE INNER JOIN CLASSES C ON CH.ID_CLASSE = C.ID;

--18.	Selecionar todas as habilidades e suas classes (mesmo que elas não tenham correspondência).
SELECT * FROM HABILIDADES H LEFT JOIN CLASSES_HABILIDADES CH ON H.ID = CH.ID_HABILIDADE RIGHT JOIN CLASSES C ON CH.ID_CLASSE = C.ID;