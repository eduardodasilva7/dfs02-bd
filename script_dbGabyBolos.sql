-- apagando bd se existir
drop database dbLoja;

-- criando bd
create database dbLoja;

-- acessando bd
use dbLoja;

-- visualizando banco de dados
show databases;

-- criando as tabelas no bd
create table tbFuncionarios(
codFunc int auto_increment,
nome varchar(100) not null,
email varchar(100),
cpf char(14) not null unique,
telCel char(10),
loradouro varchar(100),
numero char(10),
cep char(9),
bairro varchar(100),
cidade varchar(100),
estado char(2),
primary key(codFunc)
);

create table tbFornecedores(
    codForn int not null auto_increment,
    nome varchar(100),
    email varchar(100),
    cnpj char(14) not null unique,
    primary key(codForn)
);

create table tbClientes(
    codCli int not null auto_increment,
    nome varchar(100),
    email varchar(100),
    cpf char(14) not null unique,
    primary key(codCli)
);


create table tbUsuarios(
codUsu int not null auto_increment,
nome varchar(50),
senha varchar(20),
codFunc int not null,
primary key(codUsu), 
foreign key(codFunc) references tbFuncionarios(codFunc)
);

create table tbProdutos(
    codProd int not null auto_increment,
    descricao varchar(100),
    valor decimal(9,2),
    quantidade int,
    data date,
    hora time,
    codForn int not null,
    primary key(codProd),
    foreign key(codForn) references tbFornecedores(codForn)
);

create table tbProdutos(
    codProd int not null auto_increment,
    descricao varchar(100),
    valor decimal(9,2),
    quantidade int,
    data date,
    hora time,
    codForn int not null,
    primary key(codProd),
    foreign key(codForn) references tbFornecedores(codForn)
);


-- visualizando as tabelas criadas
show tables;

-- visualizando as estruturas das tabelas
describe tbUsuarios;
desc tbFuncionarios;


-- inserindo registros nas tabelas


insert into tbFuncionarios(nome,email,cpf,telCel,loradouro,numero,cep,bairro,cidade,estado)
	values('Maria Gagrielly Bejamim',
		'maria.gbenjamim@hotmail.com','478.856.875-85',
		'98523-8547', 'Rua Dr. Anonio Bento', '355', '04750-000', 'Santo Amaro', 'São Paulo', 'SP');
insert into tbFuncionarios(nome,email,cpf,telCel,loradouro,numero,cep,bairro,cidade,estado)
	values('Ana Frios',
		'ana.frios@gmail.com','126.567.652-95',
		'92154-6321', 'Rua Dr. Nascimento Bento', '55', '06147-050', 'Santo Amaro', 'São Paulo', 'SP');
insert into tbUsuarios(nome,senha,codFunc)
	values( 'maria.gabrielly','deximbranco',1);
insert into tbUsuarios(nome,senha,codFunc)
	values('ana.frios','d12frios',2);


-- visualizando os registros nos campos das tabelas

select * from tbUsuarios;
select * from tbFuncionarios;

