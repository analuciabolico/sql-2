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

--16. Apresentar o nome do aluno que tirou a maior nota na turma 102.
select nome_aluno, media_final
from aluno a
join turma_aluno ta on ta.id_aluno = a.id_aluno
where ta.media_final >= all (select media_final
                        from turma_aluno ta
                        join turma t on t.id_turma = ta.id_turma 
                        where t.id_turma = '102'
                        )

--17. Apresentar o nome do aluno que tirou a maior nota na disciplina de BDI em 2018/1.

--18. Apresentar o nome dos alunos do curso de Informática que nunca cursaram a disciplina de BDI.