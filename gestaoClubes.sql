--------------------------------------------clube

create table clube(
	id_clube serial primary key,
	nome varchar(30) unique not null,
	nome_fantasia varchar(30) unique not null,
	nome_estadio varchar(30) unique not null,
  local_estadio varchar(30) unique not null,
	data_fundacao date not null
);

insert into clube(nome, nome_fantasia, nome_estadio, local_estadio, data_fundacao) 
VALUES ('Grêmio', 'Grêmio FBPA', 'Arena do Grêmio', 'Humaitá', '1903-09-15');

insert into clube(nome, nome_fantasia, nome_estadio, local_estadio, data_fundacao) 
VALUES ('Internacional', 'SC Internacional', 'Beira Rio', 'Padre Cacique', '1909-04-04');

insert into clube(nome, nome_fantasia, nome_estadio, local_estadio, data_fundacao) 
VALUES ('Chapecoense', 'ACF', 'Arena Condá', 'Chapecó', '1973-05-10');


create table colaboradores(
	id_colaborador serial primary key,
	cpf varchar(14) unique not null,
	registro_profissional varchar(20) unique not null,
	nome varchar(50) not null,
	funcao varchar(50) not null,
	data_nascimento date not null
);

insert into colaboradores(cpf, registro_profissional, nome, funcao, data_nascimento) 
VALUES ('123.568.156-58','854684','Arlindo',' Jardineiro', '1975-06-12');

insert into colaboradores(cpf, registro_profissional, nome, funcao, data_nascimento) 
VALUES ('059.568.964-78','889457','Joedson',' Analista - financeiro', '1985-09-10');

insert into colaboradores(cpf, registro_profissional, nome, funcao, data_nascimento) 
VALUES ('068.865.948-64','886954','Jorge',' Analista - Marketing', '1990-06-12');

--------------------------------------------futebol

create table futebol(
	id_futebol serial primary key,
	id_jogador integer references jogadores,
	id_comissao_tecnica integer references comissao_tecnica
);

create table jogadores(
	id_jogador serial primary key,
	cpf varchar(14) unique not null,
	registro_profissional varchar(20) unique not null,
	nome varchar(50) not null,
	posicao varchar(50) not null,
	data_nascimento date not null
);

insert into jogadores(cpf, registro_profissional, nome, posicao, data_nascimento) 
VALUES ('546.548.745-88', '14002536', 'Ronaldinho Gramadense', 'Lateral (Esquerdo)', '1995-05-30');

insert into jogadores(cpf, registro_profissional, nome, posicao, data_nascimento) 
VALUES ('874.664.144-72', '14006548', 'Jaílson Guedes', 'Meia (Direita/Meio)', '1984-01-16');

insert into jogadores(cpf, registro_profissional, nome, posicao, data_nascimento) 
VALUES ('654.015.410-05', '14001546', 'Julian Ramirez', 'Atacante (Meio)', '2001-12-22');

2x² + 1x +_3 = 0
create table comissao_tecnica(
	id_comissao_tecnica serial primary key,
	cpf varchar(14) unique not null,
	registro_profissional varchar(20) unique not null,
	nome varchar(50) not null,
	cargo varchar(50) not null,
	data_nascimento date not null
);

insert into comissao_tecnica(cpf, registro_profissional, nome, cargo, data_nascimento) 
VALUES ('153.654.984-01','125869','Pedro',' tecnico ', '1987-05-12');

insert into comissao_tecnica(cpf, registro_profissional, nome, cargo, data_nascimento) 
VALUES ('098.654.687-58','156879','Amaral','treinador', '1987-08-12');

insert into comissao_tecnica(cpf, registro_profissional, nome, cargo, data_nascimento) 
VALUES ('153.654.994-01','135687',' Lenocir ',' olheiro ', '1997-09-12');


--------------------------------------------operacional

create table operacional(
	id_operacional serial primary key,
	id_logistica integer references logistica,
	id_estrutura_fisica integer references estrutura_fisica
);

create table logistica(
	id_logistica serial primary key,
	local_saida varchar(50) not null,
	local_chegada varchar(50) not null,
	tipo_transporte varchar(50) not null,
	custo_translado varchar(50) not null,
	data_viagem date not null
);

insert into logistica(local_saida, local_chegada, tipo_transporte, custo_translado, data_viagem) 
VALUES ('Floranópolis','Curitiba','Veiculo Pesado','Alto Custo', '2023-02-12');

insert into logistica(local_saida, local_chegada, tipo_transporte, custo_translado, data_viagem) 
VALUES ('Balneario Camboriu', 'Lages','Veiculo leve','Medio Custo', '2023-02-25');

insert into logistica(local_saida, local_chegada, tipo_transporte, custo_translado, data_viagem) 
VALUES ('Barretos','Rio de Janeiro','Aéreo','Alto Custo', '2023-04-01');


create table estrutura_fisica(
	id_estrutura_fisica serial primary key,
	motivo_chamada varchar(100) not null,
	local_manutencao varchar(50) not null,
	empresa_responsavel varchar(50) not null,
	custo_reparo varchar(50) not null,
	data_manutencao date not null
);

insert into estrutura_fisica(motivo_chamada, local_manutencao, empresa_responsavel, custo_reparo, data_manutencao) 
VALUES ('Dano na estrutura','Arquibancada Inferior Leste','Melnick Even Construtora','R$ 25.000,00', '2015-05-15');

insert into estrutura_fisica(motivo_chamada, local_manutencao, empresa_responsavel, custo_reparo, data_manutencao) 
VALUES ('Mobilia danificada','Vestiários','Mobilar Móveis','R$ 5.000,00', '2018-07-22');

insert into estrutura_fisica(motivo_chamada, local_manutencao, empresa_responsavel, custo_reparo, data_manutencao) 
VALUES ('Problema no encanamento','Banheiros - Superior','Prestador Jurandir','R$ 1.520,00', '2012-01-03');

--------------------------------------------financeiro

create table  financeiro(
  id_financeiro serial primary key
);

alter table financeiro add column id_caixa integer references caixa;

create table caixa(
  id_caixa serial primary key,
  id_fluxocaixa integer references fluxocaixa,
  relatorio_trimestral varchar(50),
  relatorio_semestral varchar(50),
  relatorio_anual varchar(50)
);

insert into caixa(relatorio_trimestral, relatorio_semestral, relatorio_anual) 
values('Superávit de R$ 11,68 milhões.', 'Superávit de R$ 25,45 milhões.', 'Superávit de R$ 30,48 milhões.');
insert into caixa(relatorio_trimestral, relatorio_semestral, relatorio_anual) 
values('Déficit de R$ 9,5 milhões.', 'Déficit de R$ 5,21 milhões.', 'Déficit de R$ 4 milhões.');
insert into caixa(relatorio_trimestral, relatorio_semestral, relatorio_anual) 
values('Superávit de 19,38 milhões.', 'Deficit de R$ 10,21 milhões.', 'Superavit de R$ 4,56 milhões.');

create table fluxocaixa(
  id_fluxocaixa serial primary key,
  id_tipo_fluxo_caixa integer references tipo_fluxo_caixa,
  id_demandafinanceira_futebol integer references demandafinanceira_futebol,
  id_demandafinanceira_financeiro integer references demandafinanceira_financeiro,
  id_demandafinanceira_operacional integer references demandafinanceira_operacional,
  id_demandafinanceira_marketing integer references demandafinanceira_marketing,
  id_demandafinanceira_juridico integer references demandafinanceira_juridico,
  id_demandafinanceira_medico integer references demandafinanceira_medico
);

create table tipo_fluxo_caixa(
  id_tipo_fluxo_caixa serial primary key,
  relatorio_lucros varchar(50) not null,
  relatorio_despesas varchar(50) not null,
  tipo_movimentacao varchar(50) not null,
  identificador_movimentacao varchar(50) not null
);

insert into tipo_fluxo_caixa(relatorio_lucros, relatorio_despesas, tipo_movimentacao, identificador_movimentacao) 
VALUES ('45000,00','32000,00','Ingressos', 'ING4562023');

insert into tipo_fluxo_caixa(relatorio_lucros, relatorio_despesas, tipo_movimentacao, identificador_movimentacao) 
VALUES ('500000,00','150000,00','Venda Jogador', 'VEND052023');

insert into tipo_fluxo_caixa(relatorio_lucros, relatorio_despesas, tipo_movimentacao, identificador_movimentacao) 
VALUES ('18450000,00','320000,00','Cota TV', 'COT012023');

--------------------------------------------medico

create table medico(
  id_medico serial primary key, 
  id_tratamento integer references tratamentos
);

create table tratamentos(
  id_tratamento serial primary key, 
  id_jogador integer references jogadores,
  tipo_tratamento varchar(50) not null,
  custo_tratamento varchar(50) not null,
  motivo_tratamento varchar(100) not null, 
  profissional_responsavel varchar(100) not null,
  data_inicio date not null,
  data_prevista_final date not null 
);

insert into tratamentos(tipo_tratamento, custo_tratamento, motivo_tratamento, profissional_responsavel, data_inicio, data_prevista_final) 
VALUES ('Fisioterapia','1800.00','Necessario', 'Adalberto', '2023-01-12', '2023-02-13');

insert into tratamentos(tipo_tratamento, custo_tratamento, motivo_tratamento, profissional_responsavel, data_inicio, data_prevista_final) 
VALUES ('Medicacao','1750.00','Necessario', 'Manoel', '2023-01-05', '2023-06-20');

insert into tratamentos(tipo_tratamento, custo_tratamento, motivo_tratamento, profissional_responsavel, data_inicio, data_prevista_final) 
VALUES ('Cirurgia','18000.00','Necessario', 'Romario', '2023-02-12', '2023-02-13');

--------------------------------------------marketing

create table marketing(
	id_marketing serial primary key,
	id_campanha integer references campanhas,
	id_patrocinador integer references patrocinadores
);

create table campanhas(
  id_campanha serial primary key,
  custo_campanha varchar(50) not null,
  parcerias varchar(50) not null,
  motivacao_campanha varchar(50) not null,
  data_inicio date not null,
  data_fim date not null
);

insert into campanhas(custo_campanha, parceirias, motivacao_campanha, data_inicio, data_fim) 
VALUES ('24520,00','Audio Mix','Mais Colaboradores', '2023-01-11', '2023-01-12');

insert into campanhas(custo_campanha, parceirias, motivacao_campanha, data_inicio, data_fim) 
VALUES ('28920,00','Doce Pao','Novas Parcerias', '2023-02-12', '2023-02-12');

insert into campanhas(custo_campanha, parceirias, motivacao_campanha, data_inicio, data_fim) 
VALUES ('29630,00','Drinks Express','Franqueados', '2023-03-12', '2023-03-12');

create table patrocinadores(
  id_patrocinador serial primary key,
  cnpj varchar(14) unique not null,
  valor_anual varchar(50) not null,
  responsavel varchar(50) not null,
  data_inicio date not null,
  data_fim date not null
);

insert into patrocinadores(cnpj, valor_anual, responsavel, data_inicio, data_fim) 
VALUES ('123456789','18000000','Banco BMG', '2021-01-01', '2023-01-01');

insert into patrocinadores(cnpj, valor_anual, responsavel, data_inicio, data_fim) 
VALUES ('246849854','25000000','Umbro', '2019-01-01', '2023-01-01');

insert into patrocinadores(cnpj, valor_anual, responsavel, data_inicio, data_fim) 
VALUES ('165487235','40000000','SportsBet', '2022-01-01', '2023-01-01');


--------------------------------------------jurídico

create table juridico(
	id_juridico serial primary key,
	id_contrato integer references contratos
);

create table contratos(
  id_contrato serial primary key ,
  id_patrocinador integer references patrocinadores,
  id_jogador integer references jogadores,
  id_marketing integer references marketing,
  tipo_contrato varchar(50) not null,
  requerente varchar(50) not null,
  solicitado varchar(50) not null,
  cpf varchar(14) not null,
  data_inicio date not null,
  data_fim date not null
);

insert into contratos(tipo_contrato, requerente, solicitado, cpf, data_inicio, data_fim) 
VALUES ('patrocinio','clube','SportsBet','086.568.489-58', '2022-01-01', '2023-01-01');

insert into contratos(tipo_contrato, requerente, solicitado, cpf, data_inicio, data_fim) 
VALUES ('Financiamento','Clube','LeonBank','095.354.489-78','2022-03-08', '2022-03-09');

insert into contratos(tipo_contrato, requerente, solicitado, cpf, data_inicio, data_fim) 
VALUES ('contrato de experiencia','clube','Recursos Humanos','156.968.409-48', '2022-01-01', '2022-03-01');


--------------------------------------------relacionais colaboradores

create table colaborador_futebol(
	id_colaborador_futebol serial primary key,
	id_colaborador integer references colaboradores,
	id_futebol integer references futebol
);

create table colaborador_medico(
	id_colaborador_medico serial primary key,
	id_colaborador integer references colaboradores,
	id_medico integer references medico
);

create table colaborador_financeiro(
	id_colaborador_financeiro serial primary key,
	id_colaborador integer references colaboradores,
	id_financeiro integer references financeiro
);

create table colaborador_marketing(
	id_colaborador_marketing serial primary key,
	id_colaborador integer references colaboradores,
	id_marketing integer references marketing
);

create table colaborador_operacional(
	id_colaborador_operacional serial primary key,
	id_colaborador integer references colaboradores,
	id_operacional integer references operacional
);

create table colaborador_juridico(
	id_colaborador_juridico serial primary key,
	id_colaborador integer references colaboradores,
	id_juridico integer references juridico
);

--------------------------------------------relacionais caixa

create table demandafinanceira_futebol(
	id_demandafinanceira_futebol serial primary key,
	id_futebol integer references futebol
);

create table demandafinanceira_financeiro(
	id_demandafinanceira_financeiro serial primary key,
	id_financeiro integer references financeiro
);

create table demandafinanceira_medico(
	id_demandafinanceira_medico serial primary key,
	id_medico integer references medico
);

create table demandafinanceira_operacional(
	id_demandafinanceira_operacional serial primary key,
	id_operacional integer references operacional
);

create table demandafinanceira_marketing(
	id_demandafinanceira_marketing serial primary key,
	id_marketing integer references marketing
);

create table demandafinanceira_juridico(
	id_demandafinanceira_juridico serial primary key,
	id_juridico integer references juridico
);


ALTER TABLE patrocinadores 
ALTER COLUMN valor_anual TYPE NUMERIC(10,2)
USING valor_anual::numeric(10,2);

ALTER TABLE tratamentos 
ALTER COLUMN custo_tratamento TYPE NUMERIC(10,2)
USING custo_tratamento::numeric(10,2);


------- patrocinios ao longo dos ano, e total

create view patrocinio_ano
as
select
	extract('year' from data_inicio) as ano,
	sum(valor_anual)
from
	patrocinadores
group by ano

UNION ALL

select
	extract('year' from data_fim) as ano,
	sum(valor_anual)
from
	patrocinadores
group by ano
order by ano ASC;

select * from patrocinio_ano;

------- viagens primeiro trimestre

create view viagens_primeiro_trimestre
as
select
	data_viagem,
	tipo_transporte,
	custo_translado
from logistica
where 
	data_viagem between '2023-01-01' and '2023-03-31'
order by data_viagem;

select * from viagens_primeiro_trimestre;

------- tratametos médicos

create view tratamentos_primeiro_trimestre
as
select 
	tipo_tratamento,
	custo_tratamento,
	motivo_tratamento,
	profissional_responsavel
from tratamentos
where 
	data_prevista_final between '2023-01-01' and '2023-03-31';
	
select * from tratamentos_primeiro_trimestre;
	
-------- funcionarios	

create view ident_funcionarios
as
select 
	jogadores.nome,
	jogadores.cpf,
	jogadores.posicao as cargo
from
	jogadores

UNION ALL

select
	comissao_tecnica.nome,
	comissao_tecnica.cpf,
	comissao_tecnica.cargo as cargo
from
	comissao_tecnica;
	
select * from ident_funcionarios;

------------ custos medicos mes de janeiro

create view custos_medicos_janeiro2023
as
select 
	avg(custo_tratamento) as media_tratamento
from 
	tratamentos
where 
	data_inicio between '2023-01-01' and '2023-01-30';
	
select * from custos_medicos_janeiro2023;