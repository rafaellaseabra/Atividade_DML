Create database empresa3_1e;
Create table DEPARTAMENTO(
  DCODIGO int auto_increment primary key,
  DNOME varchar(50)
);
create table FUNCIONARIO (
  FUNCODIGO int auto_increment primary key,
  DCODIGO int,
  nome varchar (45),
  NASCIMENTO date,
  Salario decimal (10,2),
  FOREIGN KEY(DCODIGO) references DEPARTAMENTO(DCODIGO)
);

Create table DEPENDENTE(
  DEPCODIGO int auto_increment primary key,
  FUNCODIGO int,
  DEPNOME varchar (50),
  FOREIGN KEY (FUNCODIGO) references FUNCIONARIO(FUNCODIGO)
);

insert into DEPARTAMENTO (DNOME)
values ('ADM'),('TI'),('RH'),('Financeiro'),('Marketing'),('Setor Comercial'),('Setor Operacional'),('Logística'),('Limpeza'),('Segurança');
select *from DEPARTAMENTO;

insert into FUNCIONARIO (DCODIGO, nome, NASCIMENTO, Salario)
values (1,'Juliana', '1999-05-15', 5000.00), (2,'João Rafael', '2002-11-30', 4500.00), (3,'Priscila', '2003-07-24', 3800.00), (4,'Cecília', '1990-10-4', 3300.00),
 (5,'Nicole', '1998-01-5', 3000.00),  (6,'Julia', '2000-08-3', 2900.00),  (7,'Fabiula', '1995-04-18', 3800.00),  (8,'Nicolas', '1997-09-23', 3900.00),
  (9,'Carolina', '1999-05-15', 4000.00), (10,'Rafael', '1989-07-25', 4000.00);
  select*from FUNCIONARIO;
  
  insert into DEPENDENTE (FUNCODIGO, DEPNOME)
  values (1,'Alice'),(2,'Helena'),(3,'Noah'),(4,'Maria Alice'), (5,'Ana'), (6,'Henrico'), (7,'Ambar'), (8,'Gustavo'), (9,'Luca'), (10,'Sofia');
  Select* from DEPENDENTE;