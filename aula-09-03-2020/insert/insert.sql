insert into departamento(id_departamento,nome) values(s_departamento.nextval, 'Rh');
insert into departamento values(s_departamento.nextval, 'Vendas');

insert into funcionario(id_funcionario,nome,salario,id_departamento) values(s_funcionario.nextval,'Ana',3000,1);

insert into funcionario(id_funcionario,nome,salario,id_departamento) values(s_funcionario.nextval,'Pedro',6000,1);

insert into funcionario(id_funcionario,nome,salario,id_departamento) values(s_funcionario.nextval,'Maria',5000,2);