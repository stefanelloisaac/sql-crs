drop table if exists secoes_autores;
drop table if exists livros_secoes;
drop table if exists livros_autores;
drop table if exists registros_alugueis;
drop table if exists emprestimos;
drop table if exists secoes;
drop table if exists autores;
drop table if exists livros;
drop table if exists usuarios;

create table usuarios(
	id_usuario serial primary key,
	cpf varchar(14) unique not null,
	matricula varchar(10) unique not null,
	nome varchar(50) not null,
	data_nascimento date not null
);

create table livros(
	id_livro serial primary key,
	titulo varchar(100) not null,
	paginas integer not null,
	ano integer not null,
	idioma varchar(50) not null,
	isbn varchar(13) not null unique
);

create table autores(
	id_autor serial primary key,
	nome varchar(50) not null,
	nacionalidade varchar(30) not null,
	biografia varchar(300) not null
);

create table secoes(
	id_secao serial primary key,
	nome varchar(50) not null,
	descricao varchar(50) not null,
	area_tecnica varchar(50) not null
);

create table emprestimos(
	id_emprestimo serial primary key,
	id_usuario integer references usuarios
);

create table registros_alugueis(
	id_registro_aluguel serial primary key,
	id_livro integer references livros,
	id_emprestimo integer references emprestimos,
	data_retirada date not null,
	data_devolucao date not null
);

create table livros_autores(
	id_livro_autor serial primary key,
	id_livro integer references livros,
	id_autor integer references autores
);

create table livros_secoes(
	id_livro_secao serial primary key,
	id_livro integer references livros,
	id_secao integer references secoes
);

create table secoes_autores(
	id_secao_autor serial primary key,
	id_secao integer references secoes,
	id_autor integer references autores
);

insert into usuarios(nome, cpf, matricula, data_nascimento)
values ('Isaac Stefanello','123.456.789-10','202020405','1992-05-29' );

select * from usuarios;
-- delete from usuarios where id_usuario = 1;

update usuarios set nome = 'Isaac Brugnera Stefanello' where id_usuario =1;

select nome from usuarios;

select * from usuarios where data_nascimento between '1991-01-01' and now();
