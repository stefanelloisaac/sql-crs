--a
select * from cliente;

--b
select 
	produto.idproduto,
	produto.descriao,
	produto.precocusto,
	venda.data
from 
	venda, 
	produto
where 
	produto.idproduto = venda.produto_idproduto and
	produto.idproduto = 1 and
	venda.data between '2023-01-01' and '2023-03-31';
	
--c
select 
	produto.descriao 
from 
	venda, 
	produto
where 
	produto.idproduto = venda.produto_idproduto and
not IN (
	select produto.descriao
	from produto, venda
	where venda.data between '2022-01-01' and '2022-12-31');
	
--d
select * from fornecedor; --nome fornecedor.razaosocial
select * from produto; --nome produto.descriao e produto.quantidade
select * from papelaria; --nome fantasia > 1000 prod papelaria.nomefantasia
select * from fornecimento;

select 
	fornecedor.razaosocial,
	produto.descriao,
	papelaria.nomefantasia
from
	fornecimento
join produto on (fornecimento.produto_idproduto = produto.idproduto)
join fornecedor on (fornecimento.fornecedor_idfornecedor = fornecedor.idfornecedor)
join papelaria on (fornecimento.papelaria_idpapelaria = papelaria.idpapelaria)
where
	produto.quantidade > 1000;
	
--e
select * from produto;
select * from venda;

select
	produto.descriao,
	produto.precocusto,
	venda.preco,
	100.0*(venda.preco - produto.precocusto) / produto.precocusto
from
	produto
join venda on (produto.idproduto = venda.produto_idproduto);
	
--f
select
	fornecedor.razaosocial,
	fornecedor.fone
from fornecedor
join fornecimento on (fornecimento.fornecedor_idfornecedor = fornecedor.idfornecedor) 
join produto on (fornecimento.produto_idproduto = produto.idproduto)
where
	produto.descriao = 'canetas';
	
--g
select
	produto.descriao,
	avg(produto.precocusto),
	avg(venda.preco)
from produto
join venda on (venda.produto_idproduto = produto.idproduto)
group by produto.descriao;

--h
select * from fornecimento;
select
	produto.descriao,
	sum(fornecimento.quantidade)
from produto
join fornecimento on (fornecimento.produto_idproduto = produto.idproduto)
group by produto.descriao;

---------------------------------------------------------------------------
--criar view - margem lucro
create view lucro
as
select
	produto.descriao,
	produto.precocusto,
	venda.preco,
	100.0*(venda.preco - produto.precocusto) / produto.precocusto
from
	produto
join venda on (produto.idproduto = venda.produto_idproduto);
	
select * from lucro;

------------------------------ criar 5 views
----- view01
create view quantidade_por_preco
as
select 
	produto.descriao as descricao,
	produto.quantidade / produto.precocusto as quantcusto,
	produto.quantidade / venda.preco as quantpreco,
	100 * (((produto.quantidade / venda.preco) / (produto.quantidade / produto.precocusto))-1) as porcentdiff
from 
	produto
join 
	venda on (venda.produto_idproduto = produto.idproduto);

select * from quantidade_por_preco;

----- view02
create view preco_por_quantidade
as
select 
	produto.descriao as descricao,
	produto.precocusto / produto.quantidade as custoquant,
	venda.preco / produto.quantidade as precoquant,
	100 * (((venda.preco/ produto.quantidade) / (produto.precocusto / produto.quantidade))-1) as porcentdiff
from 
	produto
join 
	venda on (venda.produto_idproduto = produto.idproduto);

select * from preco_por_quantidade;

----- view03
create view resumo_dados
as
select 
	cliente.nome,
	clientepf.cpf,
	clientepj.razaosocial,
	clientepj.cnpj,
	cliente.endereco,
	cliente.fone
from 
	cliente
join clientepj on (cliente.idcliente = clientepj.cliente_idcliente)
join clientepf on (cliente.idcliente = clientepf.cliente_idcliente);

select * from resumo_dados;

----- view04
create view quantidades_atualizadas
as
select 
	produto.descriao as descricao,
	fornecimento.quantidade as quantfornecida,
	produto.quantidade as quantproduto,
	venda.quantidade as quantvendida,
	produto.quantidade - venda.quantidade as quantatual 
from
	produto
join fornecimento on (fornecimento.produto_idproduto = produto.idproduto)
join venda on (venda.produto_idproduto = produto.idproduto);

select * from quantidades_atualizadas;

----- view05



