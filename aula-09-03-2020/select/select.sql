--Apresentar o nome dos alunos que fizeram a disciplina de Lógica em 2018/1 (utilizar exists).
select nome_aluno
from aluno a
where exists (select null
            from turma_aluno ta
            join turma t on ta.id_turma = t.id_turma
            join disciplina d on d.id_disciplina = t.id_disciplina
            where a.id_aluno = ta.id_aluno
            and t.semestre = '2018/1'
            and d.nome_disciplina = 'BDI'
                )