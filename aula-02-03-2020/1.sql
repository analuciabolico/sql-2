criar os seguintes arquivos:
create.sql
drop.sql
insert.sql

criar as PK na criação das tabelas
Utilizar o comando alter table para adicionar as FK
Criar sequence para: curso, disciplina, aluno, professor,turma (utilizar a opção nocache)

area(id_area,nome)
pk:id_area

curso (id_curso,nome_curso,n_semestres,turno,id_area);
pk:id_curso
fk:id_area

disciplina (id_disciplina, codigo varchar2,nome_disciplina,n_creditos,id_curso);
pk: id_disciplina
fk:id_curso

aluno (id_aluno,nome_aluno, data_nascimento);
pk:id_aluno

professor (id_professor,nome_professor,n_horas,id_area);
pk:id_professor
fk:: id_area

turma (id_turma,id_disciplina,id_professor,semestre,turno,max_alunos);
pk:id_turma
fk:id_disciplina
fk:id_professor

turma_aluno (id_turma,id_aluno,media_final);
pk:id_turma,id_aluno
fk:id_turma
fk:id_aluno

aluno_curso (id_aluno,id_curso,data_inicio,data_fim,turno);
pk:id_aluno, id_curso
fk:id_aluno
fk:id_curso
