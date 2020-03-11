Create table departamento
(id_departamento NUMBER constraint PK_departamento PRIMARY KEY, 
 nome varchar2(10)
);

Create table funcionario 
(id_funcionario NUMBER constraint pk_funcionario PRIMARY KEY, 
 nome VARCHAR2(10) NOT NULL, 
 salario NUMBER,
 id_departamento  NUMBER);

alter table funcionario add constraint FK_id_departamento foreign key (id_departamento) 
            references departamento (id_departamento);

CREATE SEQUENCE s_funcionario nocache;
CREATE SEQUENCE s_departamento nocache;