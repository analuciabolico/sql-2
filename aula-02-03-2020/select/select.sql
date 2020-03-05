/*1. Apresentar o nome do curso e as disciplinas.*/
SELECT c.nome_curso AS CURSO, d.nome_disciplina AS DISCIPLINAS
FROM curso c LEFT OUTER JOIN disciplina d
ON d.id_curso = c.id_curso;

/*2. Apresentar o nome do professor e a sua área.*/
SELECT NOME_PROFESSOR, NOME_CURSO FROM PROFESSOR P
INNER JOIN CURSO C
ON P.ID_CURSO = C.ID_CURSO

/*3. Apresentar o código da turma, o semestre, o nome do aluno e a nota final.*/
SELECT T.ID_TURMA, T.SEMESTRE, NOME_ALUNO, MEDIA_FINAL
FROM TURMA T INNER JOIN TURMA_ALUNO TA
ON T.ID_TURMA = TA.ID_TURMA
INNER JOIN ALUNO A
ON A.ID_ALUNO = TA.ID_ALUNO

/*4. Apresentar o nome do aluno, o nome do curso para os alunos que já concluíram o curso.*/
SELECT NOME_ALUNO, NOME_CURSO, DATA_FIM
FROM ALUNO A INNER JOIN ALUNO_CURSO AC
ON A.ID_ALUNO = AC.ID_ALUNO
INNER JOIN CURSO C
ON AC.ID_CURSO = C.ID_CURSO
WHERE DATA_FIM IS NOT NULL

/*5. Apresentar código da turma , o nome da disciplina e o nome do professor.*/
SELECT T.ID_TURMA, D.NOME_DISCIPLINA, P.NOME_PROFESSOR
FROM TURMA T INNER JOIN DISCIPLINA D 
ON T.ID_DISCIPLINA = D.ID_DISCIPLINA
INNER JOIN PROFESSOR P
ON T.ID_PROFESSOR = P.ID_PROFESSOR

/*6. Apresentar o nome da disciplina e a nota_final das disciplinas cursadas pelo Aluno Bruno no semestre 2018/1;*/
SELECT T.ID_TURMA, D.NOME_DISCIPLINA, T.SEMESTRE, NOME_ALUNO, MEDIA_FINAL
FROM TURMA T INNER JOIN TURMA_ALUNO TA
ON T.ID_TURMA = TA.ID_TURMA
INNER JOIN ALUNO A
ON A.ID_ALUNO = TA.ID_ALUNO
INNER JOIN DISCIPLINA D
ON D.ID_DISCIPLINA = T.ID_DISCIPLINA
WHERE NOME_ALUNO = 'Bruno' AND T.SEMESTRE = '2018/1'

/*7. Apresentar o nome dos alunos que foram aprovados na disciplina de BDI no semestre de 2018/1;*/
SELECT T.ID_TURMA, D.NOME_DISCIPLINA, T.SEMESTRE, NOME_ALUNO, MEDIA_FINAL
FROM TURMA T INNER JOIN TURMA_ALUNO TA
ON T.ID_TURMA = TA.ID_TURMA
INNER JOIN ALUNO A
ON A.ID_ALUNO = TA.ID_ALUNO
INNER JOIN DISCIPLINA D
ON D.ID_DISCIPLINA = T.ID_DISCIPLINA
WHERE NOME_DISCIPLINA = 'BDI' AND MEDIA_FINAL >= 7

/*8. Apresentar o total de alunos matriculados nas turmas do semestre 2018/1.*/
SELECT COUNT(ALUNO) FROM (
    SELECT T.ID_TURMA, T.SEMESTRE, A.ID_ALUNO ALUNO
    FROM TURMA T INNER JOIN TURMA_ALUNO TA
    ON T.ID_TURMA = TA.ID_TURMA
    INNER JOIN ALUNO A
    ON A.ID_ALUNO = TA.ID_ALUNO
    INNER JOIN DISCIPLINA D
    ON D.ID_DISCIPLINA = T.ID_DISCIPLINA
)

/*9. Apresentar a média geral na disciplina de BDI em 2018/1.*/
SELECT AVG(MEDIA_FINAL)
FROM TURMA T INNER JOIN TURMA_ALUNO TA
ON T.ID_TURMA = TA.ID_TURMA
INNER JOIN ALUNO A
ON A.ID_ALUNO = TA.ID_ALUNO
INNER JOIN DISCIPLINA D
ON D.ID_DISCIPLINA = T.ID_DISCIPLINA
WHERE NOME_DISCIPLINA = 'BDI' 

/*10. Apresentar o código da turma, nome da disciplina e quantidade de alunos para as turma de 2018/1.*/
SELECT T.ID_TURMA, T.SEMESTRE, D.NOME_DISCIPLINA, COUNT(A.ID_ALUNO)
FROM TURMA T INNER JOIN TURMA_ALUNO TA
ON T.ID_TURMA = TA.ID_TURMA
INNER JOIN ALUNO A
ON A.ID_ALUNO = TA.ID_ALUNO
INNER JOIN DISCIPLINA D
ON D.ID_DISCIPLINA = T.ID_DISCIPLINA
WHERE T.SEMESTRE = '2018/1'
GROUP BY T.ID_TURMA, T.SEMESTRE, D.NOME_DISCIPLINA

/*11. Apresentar o código da turma, nome da disciplina para as turma de 2018/1 com mais de 30 alunos.*/

/*12. Apresentar o nome da área e o total de cursos da área. Se a área não tiver nenhum curso deve aparecer o total de cursos 0.*/

/*13. Apresentar o nome do professor e o total de disciplinas ministradas por este professor.
  Se o professor não ministrar nenhuma disciplina deve aparecer o valor 0.*/

/*14. Apresentar o nome dos cursos e o total de turmas ofertadas em 2018/1.
  Se o curso não tiver nenhuma turma ele deve aparecer também com o total de turma 0.*/
