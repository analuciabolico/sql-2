insert into curso (id_curso, nome_curso, n_semestres, turno)
values (s_id_curso.nextval, 'Informática', '4', 'Noite');
insert into curso (id_curso, nome_curso, n_semestres, turno)
values (s_id_curso.nextval, 'Redes', '4', 'Noite');
insert into curso (id_curso, nome_curso, n_semestres, turno)
values (s_id_curso.nextval, 'Biblioteconomia', '4', 'Manhã');

insert into disciplina (id_disciplina, codigo, nome_disciplina, n_creditos,id_curso)
values (s_id_disciplina.nextval, 'INF001', 'BDI', 2,1);
insert into disciplina (id_disciplina, codigo, nome_disciplina, n_creditos,id_curso)
values (s_id_disciplina.nextval, 'INF002', 'ProgramaçãoI', 4,1);
insert into disciplina (id_disciplina, codigo, nome_disciplina, n_creditos,id_curso)
values (s_id_disciplina.nextval, 'RED002', 'Roteamento', 2,2);
insert into disciplina (id_disciplina, codigo, nome_disciplina, n_creditos,id_curso)
values (s_id_disciplina.nextval, 'BIB001', 'Rest. Livros', 2,3);

insert into aluno (id_aluno, nome_aluno)
values (s_id_aluno.nextval, 'Pedro');
insert into aluno (id_aluno, nome_aluno)
values (s_id_aluno.nextval, 'Camila');
insert into aluno (id_aluno, nome_aluno)
values (s_id_aluno.nextval, 'Bruno');


insert into professor (id_professor, nome_professor, n_horas, id_curso)
values (s_id_professor.nextval, 'Ana', 20, 1);
insert into professor (id_professor, nome_professor, n_horas, id_curso)
values (s_id_professor.nextval, 'Paulo', 40, 1);
insert into professor (id_professor, nome_professor, n_horas, id_curso)
values (s_id_professor.nextval, 'Alex', 20, 2);
insert into professor (id_professor, nome_professor, n_horas, id_curso)
values (s_id_professor.nextval, 'Lizandra', 0, 3);

insert into turma (id_turma,  id_disciplina, id_professor, semestre, turno,max_alunos)
values (s_id_turma.nextval,  100, 300, '2018/1', 'Noite',2);
insert into turma (id_turma, id_disciplina, id_professor, semestre, turno,max_alunos)
values (s_id_turma.nextval, 101, 301, '2018/1', 'Noite',2);
insert into turma (id_turma, id_disciplina, id_professor, semestre, turno,max_alunos)
values (s_id_turma.nextval, 102, 302, '2018/1', 'Manhã',2);


insert into turma_aluno (id_turma, id_aluno, media_final)
values (400, 200, 7);
insert into turma_aluno (id_turma, id_aluno, media_final)
values (400, 201, 2);
insert into turma_aluno (id_turma, id_aluno, media_final)
values (401, 200, 8);
insert into turma_aluno (id_turma, id_aluno, media_final)
values (402, 202, 10);

insert into aluno_curso (id_aluno, id_curso, data_inicio, data_fim, turno)
values (200, 1, '09/03/2016', null, 'Noite');
insert into aluno_curso (id_aluno, id_curso, data_inicio, data_fim, turno)
values (201, 1, '11/08/2016', null, 'Noite');
insert into aluno_curso (id_aluno, id_curso, data_inicio, data_fim, turno)
values (202, 2, '12/03/2017', null, 'Manhã');
