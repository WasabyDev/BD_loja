create database bd_venda;
use bd_venda;
 
create table cliente(
id int auto_increment,
nome varchar(45),
telefone varchar(45),
email varchar(45),
primary key(id)
);
 
create table vendedor(
id int auto_increment,
nome varchar(45),
primary key(id)
);
 
create table pagamento(
id int auto_increment,
nome varchar(45),
primary key(id)
);
 
create table categoria(
id int auto_increment,
nome varchar(45),
primary key(id)
);
 
create table fornecedor(
id int auto_increment,
cnpj varchar(45),
nome varchar(45),
primary key(id)
);
 
create table venda(
id int auto_increment,
valor_total decimal(10,2),
data datetime,
cliente_id int,
vendedor_id int,
pagamento_id int,
primary key(id),
foreign key (cliente_id) references cliente(id),
foreign key (vendedor_id) references vendedor(id),
foreign key (pagamento_id) references pagamento(id)
);
 
create table produto(
id int auto_increment,
nome varchar(45),
preco decimal(10,2),
qtd_estoque varchar(45),
categoria_id int,
fornecedor_id int,
primary key(id),
foreign key(categoria_id) references categoria(id),
foreign key (fornecedor_id) references fornecedor(id)
);
 
create table venda_produto(
id int auto_increment,
venda_id int,
produto_id int,
primary key(id),
foreign key (venda_id) references venda (id),
foreign key (produto_id) references produto(id)
 
);