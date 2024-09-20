CREATE DATABASE gervenda;

CREATE TABLE PRODUTOS(
  produto_id Int auto_increment PRIMARY KEY,
  nome varchar (50),
  preco decimal(10,2),
  estoque int 
);

CREATE TABLE VENDAS(
  venda_id int auto_increment PRIMARY KEY,
  produto_id int,
  quantidade int,
  data_venda date,
  FOREIGN KEY(produto_id) references PRODUTOS(produto_id)
);
insert into PRODUTOS (nome, preco, estoque)
  values ('NOTEBOOK SAMSUNG',5500.00,30);
	
  select * from PRODUTOS;
  
insert into VENDAS (produto_id, quantidade, data_venda)
     values(1,5, '2024-09-20'), (2,2, '2024-09-20'), (3,4, '2024-09-25');
select *from VENDAS;
  

  update PRODUTOS 
  set preco = 6550.00
  where produto_id = 1;
  
delete from VENDAS
where venda_id = 1;
  

select * from produtos;
select nome, estoque from PRODUTOS;  
select quantidade, data_venda from VENDAS;

select *from VENDAS
where venda_id = 2;