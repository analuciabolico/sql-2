/*1. Apresentar o nome do curso e as disciplinas.*/
SELECT c.nome_curso AS CURSO, d.nome_disciplina AS DISCIPLINAS
FROM curso c LEFT OUTER JOIN disciplina d
ON d.id_curso = c.id_curso;

/*2. Apresentar o nome do professor e a sua área.*/

/*3. Apresentar o código da turma, o semestre, o nome do aluno e a nota final.*/

/*4. Apresentar o nome do aluno, o nome do curso para os alunos que já concluíram o curso.*/

/*5. Apresentar código da turma , o nome da disciplina e o nome do professor.*/

/*6. Apresentar o nome da disciplina e a nota_final das disciplinas cursadas pelo Aluno Bruno no semestre 2018/1;*/

/*7. Apresentar o nome dos alunos que foram aprovados na disciplina de BDI no semestre de 2018/1;*/

/*8. Apresentar o total de alunos matriculados nas turmas do semestre 2018/1.*/

/*9. Apresentar a média geral na disciplina de BDI em 2018/1.*/

/*10. Apresentar o código da turma, nome da disciplina e quantidade de alunos para as turma de 2018/1.*/

/*11. Apresentar o código da turma, nome da disciplina para as turma de 2018/1 com mais de 30 alunos.*/

/*12. Apresentar o nome da área e o total de cursos da área. Se a área não tiver nenhum curso deve aparecer o total de cursos 0.*/

/*13. Apresentar o nome do professor e o total de disciplinas ministradas por este professor.
  Se o professor não ministrar nenhuma disciplina deve aparecer o valor 0.*/

/*14. Apresentar o nome dos cursos e o total de turmas ofertadas em 2018/1.
  Se o curso não tiver nenhuma turma ele deve aparecer também com o total de turma 0.*/
