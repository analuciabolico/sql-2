--1. Apresentar o nome do curso e as disciplinas.
select c.nome_curso,d.nome_disciplina
from curso c inner join disciplina d
on c.id_curso=d.id_curso;

select c.nome_curso,d.nome_disciplina
from curso c inner join disciplina d
using (id_curso);

select c.nome_curso,d.nome_disciplina,id_curso
from curso c inner join disciplina d
using (id_curso);

select c.nome_curso,d.nome_disciplina
from curso c left join disciplina d
on c.id_curso=d.id_curso;

--errado
select c.nome_curso,d.nome_disciplina,c.id_curso
from curso c left outer join disciplina d
using (id_curso);

select c.nome_curso,d.nome_disciplina,c.id_curso
from curso c left outer disciplina d
using (c.id_curso);

select c.nome_curso,d.nome_disciplina,c.id_curso
from curso c left outer join disciplina d
using (d.id_curso);


--2. Apresentar o nome do professor e a sua área
select professor.nome_professor,area.nome_area
from professor left outer join area
on professor.id_area=area.id_area;

select professor.nome_professor,area.nome_area
from professor inner join area
on professor.id_area=area.id_area;

--3. Apresentar o código da turma, o semestre, o nome do aluno e a nota final
select turma.id_turma,turma.semestre,aluno.nome_aluno,turma_aluno.media_final
from turma inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
inner join aluno
on turma_aluno.id_aluno = aluno.id_aluno;

--4. Apresentar o nome do aluno, o nome do curso para os alunos que já concluíram o curso.
select aluno.nome_aluno,curso.nome_curso
from aluno inner join aluno_curso
on aluno.id_aluno = aluno_curso.id_aluno
inner join curso
on aluno_curso.id_curso = curso.id_curso
where aluno_curso.data_fim is not null;

--5. Apresentar código da turma , o nome da disciplina e o nome do professor
Select turma.id_turma,disciplina.nome_disciplina, professor.nome_professor
from turma inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
inner join professor
on (turma.id_professor = professor.id_professor);

--6. Apresentar o nome da disciplina e a media_final das disciplinas cursadas pelo 
--aluno Bruno no semestre de 2018/1;
select disciplina.nome_disciplina,turma_aluno.media_final
from disciplina inner join turma 
on disciplina.id_disciplina=turma.id_disciplina
inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
inner join aluno
on turma_aluno.id_aluno = aluno.id_aluno
where nome_aluno='Bruno' and turma.semestre='2018/1';

Passo a passo;

select * from aluno;-- O bruno é o 202

select * from turma_aluno where id_aluno=202; -- turma 402

select * from turma where id_turma=402; -- disciplina 102

select * from disciplina where id_disciplina=102; -- roteamento;


--7. Apresentar o nome dos alunos que foram aprovados na disciplina de BDI no semestre de 2018/1;
select aluno.nome_aluno
from disciplina inner join turma 
on disciplina.id_disciplina=turma.id_disciplina
inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
inner join aluno
on turma_aluno.id_aluno = aluno.id_aluno
where disciplina.nome_disciplina='BDI'
 and turma.semestre='2018/1'
 and turma_aluno.media_final >=7;


select *
from disciplina inner join turma 
on disciplina.id_disciplina=turma.id_disciplina
inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
inner join aluno
on turma_aluno.id_aluno = aluno.id_aluno
where disciplina.nome_disciplina='BDI'
 and turma.semestre='2018/1'
 and turma_aluno.media_final >=7;

--8.Apresentar o total de alunos matriculados nas turmas do semestre 2018/1.
select count(turma_aluno.id_aluno)
from turma inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
where turma.semestre='2018/1';


ou 

select count(*)
from turma inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
where turma.semestre='2018/1';

Se eu tenho um aluno em várias turmas e eu quero contar apenas uma vez o aluno

select count(distinct turma_aluno.id_aluno)
from turma inner join turma_aluno
on turma.id_turma = turma_aluno.id_turma
where turma.semestre='2018/1';

--9. Apresentar a média geral na disciplina de BDI em 2018/1.

select avg(ta.media_final)
from disciplina d inner join turma t 
on d.id_disciplina=t.id_disciplina
inner join turma_aluno ta
on t.id_turma = ta.id_turma
where d.nome_disciplina='BDI' and t.semestre='2018/1';


--10. Apresentar o código da turma, nome da disciplina e quantidade de alunos para as turma de 2018/1.

Select turma.id_turma,disciplina.nome_disciplina, count(*)
from turma inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
inner join turma_aluno
 on (turma.id_turma = turma_aluno.id_turma)
where turma.semestre='2018/1'
group by turma.id_turma,disciplina.nome_disciplina;

--se tiver turma sem alunos matriculados

--Ainda está errado
Select turma.id_turma,disciplina.nome_disciplina, count(*)
from turma inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
left outer join turma_aluno
 on (turma.id_turma = turma_aluno.id_turma)
where turma.semestre='2018/1'
group by turma.id_turma,disciplina.nome_disciplina;


--Certo
Select turma.id_turma,disciplina.nome_disciplina, count(id_aluno)
from turma inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
left outer join turma_aluno
 on (turma.id_turma = turma_aluno.id_turma)
where turma.semestre='2018/1'
group by turma.id_turma,disciplina.nome_disciplina;


--explicação

Select *
from turma inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
left outer join turma_aluno
 on (turma.id_turma = turma_aluno.id_turma)
where turma.semestre='2018/1';


11. Apresentar o código da turma, nome da disciplina para as turma de 2018/1 com mais de 30 alunos.
Select turma.id_turma,disciplina.nome_disciplina
from turma inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
inner join turma_aluno
 on (turma.id_turma = turma_aluno.id_turma)
where turma.semestre='2018/1'
group by turma.id_turma,disciplina.nome_disciplina
having count(*)>1;

12. Apresentar o nome da área e o total de cursos da área. Se a área não tiver nenhum curso deve aparecer o total de cursos 0.

--Errado

select nome_area, count(*)
from area left outer join curso
on area.id_area=curso.id_area
group by nome_area;

--Explicação
select *
from area left outer join curso
on area.id_area=curso.id_area;

--Certo
select nome_area, count(id_curso)
from area left outer join curso
on area.id_area=curso.id_area
group by nome_area;


13. Apresentar o nome do professor e o total de disciplinas ministradas por este professor. Se o professor não ministrar nenhuma disciplina deve aparecer o valor 0.


--Errado
Select professor.nome_professor,count(id_turma)
from professor left outer join turma
 on (professor.id_professor = turma.id_professor)
inner join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
group by professor.nome_professor;

--Certo
Select professor.nome_professor,count(id_turma)
from professor left outer join turma
 on (professor.id_professor = turma.id_professor)
left outer join disciplina
 on (turma.id_disciplina = disciplina.id_disciplina)
group by professor.nome_professor;

14. Apresentar o nome dos cursos e o total de turmas ofertadas em 2018/1. Se o curso não tiver nenhuma turma ele deve aparecer também com o total de turma 0.

--Errado
Select curso.nome_curso,count(id_turma)
from curso left outer join disciplina
 on curso.id_curso = disciplina.id_curso
left outer join turma
 on turma.id_disciplina = disciplina.id_disciplina
where semestre='2018/1'
group by curso.nome_curso;


--Certo
Select curso.nome_curso,count(id_turma)
from curso left outer join disciplina
 on curso.id_curso = disciplina.id_curso
left outer join turma
 on turma.id_disciplina = disciplina.id_disciplina
and semestre='2018/1'
group by curso.nome_curso;
