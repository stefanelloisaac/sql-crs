--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)

-- Started on 2023-06-02 17:35:34 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 263 (class 1259 OID 17567)
-- Name: caixa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.caixa (
    id_caixa integer NOT NULL,
    id_fluxocaixa integer,
    relatorio_trimestral character varying(50),
    relatorio_semestral character varying(50),
    relatorio_anual character varying(50)
);


ALTER TABLE public.caixa OWNER TO postgres;

--
-- TOC entry 262 (class 1259 OID 17566)
-- Name: caixa_id_caixa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.caixa_id_caixa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.caixa_id_caixa_seq OWNER TO postgres;

--
-- TOC entry 3754 (class 0 OID 0)
-- Dependencies: 262
-- Name: caixa_id_caixa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.caixa_id_caixa_seq OWNED BY public.caixa.id_caixa;


--
-- TOC entry 235 (class 1259 OID 17281)
-- Name: campanhas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.campanhas (
    id_campanha integer NOT NULL,
    custo_campanha character varying(20) NOT NULL,
    parcerias character varying(50) NOT NULL,
    motivacao_campanha character varying(50) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NOT NULL
);


ALTER TABLE public.campanhas OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 17280)
-- Name: campanhas_id_campanha_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.campanhas_id_campanha_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.campanhas_id_campanha_seq OWNER TO postgres;

--
-- TOC entry 3755 (class 0 OID 0)
-- Dependencies: 234
-- Name: campanhas_id_campanha_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.campanhas_id_campanha_seq OWNED BY public.campanhas.id_campanha;


--
-- TOC entry 215 (class 1259 OID 17154)
-- Name: clube; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clube (
    id_clube integer NOT NULL,
    nome character varying(30) NOT NULL,
    nome_fantasia character varying(30) NOT NULL,
    nome_estadio character varying(30) NOT NULL,
    local_estadio character varying(30) NOT NULL,
    data_fundacao date NOT NULL
);


ALTER TABLE public.clube OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17153)
-- Name: clube_id_clube_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clube_id_clube_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clube_id_clube_seq OWNER TO postgres;

--
-- TOC entry 3756 (class 0 OID 0)
-- Dependencies: 214
-- Name: clube_id_clube_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clube_id_clube_seq OWNED BY public.clube.id_clube;


--
-- TOC entry 269 (class 1259 OID 17618)
-- Name: colaborador_financeiro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaborador_financeiro (
    id_colaborador_financeiro integer NOT NULL,
    id_colaborador integer,
    id_financeiro integer
);


ALTER TABLE public.colaborador_financeiro OWNER TO postgres;

--
-- TOC entry 268 (class 1259 OID 17617)
-- Name: colaborador_financeiro_id_colaborador_financeiro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaborador_financeiro_id_colaborador_financeiro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaborador_financeiro_id_colaborador_financeiro_seq OWNER TO postgres;

--
-- TOC entry 3757 (class 0 OID 0)
-- Dependencies: 268
-- Name: colaborador_financeiro_id_colaborador_financeiro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaborador_financeiro_id_colaborador_financeiro_seq OWNED BY public.colaborador_financeiro.id_colaborador_financeiro;


--
-- TOC entry 265 (class 1259 OID 17584)
-- Name: colaborador_futebol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaborador_futebol (
    id_colaborador_futebol integer NOT NULL,
    id_colaborador integer,
    id_futebol integer
);


ALTER TABLE public.colaborador_futebol OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 17583)
-- Name: colaborador_futebol_id_colaborador_futebol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaborador_futebol_id_colaborador_futebol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaborador_futebol_id_colaborador_futebol_seq OWNER TO postgres;

--
-- TOC entry 3758 (class 0 OID 0)
-- Dependencies: 264
-- Name: colaborador_futebol_id_colaborador_futebol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaborador_futebol_id_colaborador_futebol_seq OWNED BY public.colaborador_futebol.id_colaborador_futebol;


--
-- TOC entry 275 (class 1259 OID 17669)
-- Name: colaborador_juridico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaborador_juridico (
    id_colaborador_juridico integer NOT NULL,
    id_colaborador integer,
    id_juridico integer
);


ALTER TABLE public.colaborador_juridico OWNER TO postgres;

--
-- TOC entry 274 (class 1259 OID 17668)
-- Name: colaborador_juridico_id_colaborador_juridico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaborador_juridico_id_colaborador_juridico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaborador_juridico_id_colaborador_juridico_seq OWNER TO postgres;

--
-- TOC entry 3759 (class 0 OID 0)
-- Dependencies: 274
-- Name: colaborador_juridico_id_colaborador_juridico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaborador_juridico_id_colaborador_juridico_seq OWNED BY public.colaborador_juridico.id_colaborador_juridico;


--
-- TOC entry 271 (class 1259 OID 17635)
-- Name: colaborador_marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaborador_marketing (
    id_colaborador_marketing integer NOT NULL,
    id_colaborador integer,
    id_marketing integer
);


ALTER TABLE public.colaborador_marketing OWNER TO postgres;

--
-- TOC entry 270 (class 1259 OID 17634)
-- Name: colaborador_marketing_id_colaborador_marketing_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaborador_marketing_id_colaborador_marketing_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaborador_marketing_id_colaborador_marketing_seq OWNER TO postgres;

--
-- TOC entry 3760 (class 0 OID 0)
-- Dependencies: 270
-- Name: colaborador_marketing_id_colaborador_marketing_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaborador_marketing_id_colaborador_marketing_seq OWNED BY public.colaborador_marketing.id_colaborador_marketing;


--
-- TOC entry 267 (class 1259 OID 17601)
-- Name: colaborador_medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaborador_medico (
    id_colaborador_medico integer NOT NULL,
    id_colaborador integer,
    id_medico integer
);


ALTER TABLE public.colaborador_medico OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 17600)
-- Name: colaborador_medico_id_colaborador_medico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaborador_medico_id_colaborador_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaborador_medico_id_colaborador_medico_seq OWNER TO postgres;

--
-- TOC entry 3761 (class 0 OID 0)
-- Dependencies: 266
-- Name: colaborador_medico_id_colaborador_medico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaborador_medico_id_colaborador_medico_seq OWNED BY public.colaborador_medico.id_colaborador_medico;


--
-- TOC entry 273 (class 1259 OID 17652)
-- Name: colaborador_operacional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaborador_operacional (
    id_colaborador_operacional integer NOT NULL,
    id_colaborador integer,
    id_operacional integer
);


ALTER TABLE public.colaborador_operacional OWNER TO postgres;

--
-- TOC entry 272 (class 1259 OID 17651)
-- Name: colaborador_operacional_id_colaborador_operacional_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaborador_operacional_id_colaborador_operacional_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaborador_operacional_id_colaborador_operacional_seq OWNER TO postgres;

--
-- TOC entry 3762 (class 0 OID 0)
-- Dependencies: 272
-- Name: colaborador_operacional_id_colaborador_operacional_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaborador_operacional_id_colaborador_operacional_seq OWNED BY public.colaborador_operacional.id_colaborador_operacional;


--
-- TOC entry 217 (class 1259 OID 17169)
-- Name: colaboradores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.colaboradores (
    id_colaborador integer NOT NULL,
    cpf character varying(14) NOT NULL,
    registro_profissional character varying(20) NOT NULL,
    nome character varying(50) NOT NULL,
    funcao character varying(50) NOT NULL,
    data_nascimento date NOT NULL
);


ALTER TABLE public.colaboradores OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17168)
-- Name: colaboradores_id_colaborador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.colaboradores_id_colaborador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.colaboradores_id_colaborador_seq OWNER TO postgres;

--
-- TOC entry 3763 (class 0 OID 0)
-- Dependencies: 216
-- Name: colaboradores_id_colaborador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.colaboradores_id_colaborador_seq OWNED BY public.colaboradores.id_colaborador;


--
-- TOC entry 221 (class 1259 OID 17198)
-- Name: comissao_tecnica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comissao_tecnica (
    id_comissao_tecnica integer NOT NULL,
    cpf character varying(14) NOT NULL,
    registro_profissional character varying(20) NOT NULL,
    nome character varying(50) NOT NULL,
    cargo character varying(50) NOT NULL,
    data_nascimento date NOT NULL
);


ALTER TABLE public.comissao_tecnica OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17197)
-- Name: comissao_tecnica_id_comissao_tecnica_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comissao_tecnica_id_comissao_tecnica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comissao_tecnica_id_comissao_tecnica_seq OWNER TO postgres;

--
-- TOC entry 3764 (class 0 OID 0)
-- Dependencies: 220
-- Name: comissao_tecnica_id_comissao_tecnica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comissao_tecnica_id_comissao_tecnica_seq OWNED BY public.comissao_tecnica.id_comissao_tecnica;


--
-- TOC entry 241 (class 1259 OID 17314)
-- Name: contratos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contratos (
    id_contrato integer NOT NULL,
    id_patrocinador integer,
    id_jogador integer,
    id_marketing integer,
    tipo_contrato character varying(50) NOT NULL,
    requerente character varying(50) NOT NULL,
    solicitado character varying(50) NOT NULL,
    cpf character varying(14) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NOT NULL
);


ALTER TABLE public.contratos OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 17313)
-- Name: contratos_id_contrato_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contratos_id_contrato_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contratos_id_contrato_seq OWNER TO postgres;

--
-- TOC entry 3765 (class 0 OID 0)
-- Dependencies: 240
-- Name: contratos_id_contrato_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contratos_id_contrato_seq OWNED BY public.contratos.id_contrato;


--
-- TOC entry 231 (class 1259 OID 17257)
-- Name: tratamentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tratamentos (
    id_tratamento integer NOT NULL,
    id_jogador integer,
    tipo_tratamento character varying(50) NOT NULL,
    custo_tratamento numeric(10,2) NOT NULL,
    motivo_tratamento character varying(100) NOT NULL,
    profissional_responsavel character varying(100) NOT NULL,
    data_inicio date NOT NULL,
    data_prevista_final date NOT NULL
);


ALTER TABLE public.tratamentos OWNER TO postgres;

--
-- TOC entry 280 (class 1259 OID 17717)
-- Name: custos_medicos_janeiro2023; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.custos_medicos_janeiro2023 AS
 SELECT avg(tratamentos.custo_tratamento) AS media_tratamento
   FROM public.tratamentos
  WHERE ((tratamentos.data_inicio >= '2023-01-01'::date) AND (tratamentos.data_inicio <= '2023-01-30'::date));


ALTER TABLE public.custos_medicos_janeiro2023 OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 17465)
-- Name: demandafinanceira_financeiro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandafinanceira_financeiro (
    id_demandafinanceira_financeiro integer NOT NULL,
    id_financeiro integer
);


ALTER TABLE public.demandafinanceira_financeiro OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 17464)
-- Name: demandafinanceira_financeiro_id_demandafinanceira_financeir_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandafinanceira_financeiro_id_demandafinanceira_financeir_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandafinanceira_financeiro_id_demandafinanceira_financeir_seq OWNER TO postgres;

--
-- TOC entry 3766 (class 0 OID 0)
-- Dependencies: 250
-- Name: demandafinanceira_financeiro_id_demandafinanceira_financeir_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandafinanceira_financeiro_id_demandafinanceira_financeir_seq OWNED BY public.demandafinanceira_financeiro.id_demandafinanceira_financeiro;


--
-- TOC entry 249 (class 1259 OID 17453)
-- Name: demandafinanceira_futebol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandafinanceira_futebol (
    id_demandafinanceira_futebol integer NOT NULL,
    id_futebol integer
);


ALTER TABLE public.demandafinanceira_futebol OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 17452)
-- Name: demandafinanceira_futebol_id_demandafinanceira_futebol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandafinanceira_futebol_id_demandafinanceira_futebol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandafinanceira_futebol_id_demandafinanceira_futebol_seq OWNER TO postgres;

--
-- TOC entry 3767 (class 0 OID 0)
-- Dependencies: 248
-- Name: demandafinanceira_futebol_id_demandafinanceira_futebol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandafinanceira_futebol_id_demandafinanceira_futebol_seq OWNED BY public.demandafinanceira_futebol.id_demandafinanceira_futebol;


--
-- TOC entry 259 (class 1259 OID 17513)
-- Name: demandafinanceira_juridico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandafinanceira_juridico (
    id_demandafinanceira_juridico integer NOT NULL,
    id_juridico integer
);


ALTER TABLE public.demandafinanceira_juridico OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 17512)
-- Name: demandafinanceira_juridico_id_demandafinanceira_juridico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandafinanceira_juridico_id_demandafinanceira_juridico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandafinanceira_juridico_id_demandafinanceira_juridico_seq OWNER TO postgres;

--
-- TOC entry 3768 (class 0 OID 0)
-- Dependencies: 258
-- Name: demandafinanceira_juridico_id_demandafinanceira_juridico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandafinanceira_juridico_id_demandafinanceira_juridico_seq OWNED BY public.demandafinanceira_juridico.id_demandafinanceira_juridico;


--
-- TOC entry 257 (class 1259 OID 17501)
-- Name: demandafinanceira_marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandafinanceira_marketing (
    id_demandafinanceira_marketing integer NOT NULL,
    id_marketing integer
);


ALTER TABLE public.demandafinanceira_marketing OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 17500)
-- Name: demandafinanceira_marketing_id_demandafinanceira_marketing_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandafinanceira_marketing_id_demandafinanceira_marketing_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandafinanceira_marketing_id_demandafinanceira_marketing_seq OWNER TO postgres;

--
-- TOC entry 3769 (class 0 OID 0)
-- Dependencies: 256
-- Name: demandafinanceira_marketing_id_demandafinanceira_marketing_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandafinanceira_marketing_id_demandafinanceira_marketing_seq OWNED BY public.demandafinanceira_marketing.id_demandafinanceira_marketing;


--
-- TOC entry 253 (class 1259 OID 17477)
-- Name: demandafinanceira_medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandafinanceira_medico (
    id_demandafinanceira_medico integer NOT NULL,
    id_medico integer
);


ALTER TABLE public.demandafinanceira_medico OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 17476)
-- Name: demandafinanceira_medico_id_demandafinanceira_medico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandafinanceira_medico_id_demandafinanceira_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandafinanceira_medico_id_demandafinanceira_medico_seq OWNER TO postgres;

--
-- TOC entry 3770 (class 0 OID 0)
-- Dependencies: 252
-- Name: demandafinanceira_medico_id_demandafinanceira_medico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandafinanceira_medico_id_demandafinanceira_medico_seq OWNED BY public.demandafinanceira_medico.id_demandafinanceira_medico;


--
-- TOC entry 255 (class 1259 OID 17489)
-- Name: demandafinanceira_operacional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.demandafinanceira_operacional (
    id_demandafinanceira_operacional integer NOT NULL,
    id_operacional integer
);


ALTER TABLE public.demandafinanceira_operacional OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 17488)
-- Name: demandafinanceira_operacional_id_demandafinanceira_operacio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.demandafinanceira_operacional_id_demandafinanceira_operacio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.demandafinanceira_operacional_id_demandafinanceira_operacio_seq OWNER TO postgres;

--
-- TOC entry 3771 (class 0 OID 0)
-- Dependencies: 254
-- Name: demandafinanceira_operacional_id_demandafinanceira_operacio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.demandafinanceira_operacional_id_demandafinanceira_operacio_seq OWNED BY public.demandafinanceira_operacional.id_demandafinanceira_operacional;


--
-- TOC entry 227 (class 1259 OID 17233)
-- Name: estrutura_fisica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estrutura_fisica (
    id_estrutura_fisica integer NOT NULL,
    motivo_chamada character varying(100) NOT NULL,
    local_manutencao character varying(50) NOT NULL,
    empresa_responsavel character varying(50) NOT NULL,
    custo_reparo character varying(50) NOT NULL,
    data_manutencao date NOT NULL
);


ALTER TABLE public.estrutura_fisica OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17232)
-- Name: estrutura_fisica_id_estrutura_fisica_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estrutura_fisica_id_estrutura_fisica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estrutura_fisica_id_estrutura_fisica_seq OWNER TO postgres;

--
-- TOC entry 3772 (class 0 OID 0)
-- Dependencies: 226
-- Name: estrutura_fisica_id_estrutura_fisica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.estrutura_fisica_id_estrutura_fisica_seq OWNED BY public.estrutura_fisica.id_estrutura_fisica;


--
-- TOC entry 247 (class 1259 OID 17446)
-- Name: financeiro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.financeiro (
    id_financeiro integer NOT NULL,
    id_caixa integer
);


ALTER TABLE public.financeiro OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17445)
-- Name: financeiro_id_financeiro_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.financeiro_id_financeiro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.financeiro_id_financeiro_seq OWNER TO postgres;

--
-- TOC entry 3773 (class 0 OID 0)
-- Dependencies: 246
-- Name: financeiro_id_financeiro_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.financeiro_id_financeiro_seq OWNED BY public.financeiro.id_financeiro;


--
-- TOC entry 261 (class 1259 OID 17525)
-- Name: fluxocaixa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fluxocaixa (
    id_fluxocaixa integer NOT NULL,
    id_tipo_fluxo_caixa integer,
    id_demandafinanceira_futebol integer,
    id_demandafinanceira_financeiro integer,
    id_demandafinanceira_operacional integer,
    id_demandafinanceira_marketing integer,
    id_demandafinanceira_juridico integer,
    id_demandafinanceira_medico integer
);


ALTER TABLE public.fluxocaixa OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 17524)
-- Name: fluxocaixa_id_fluxocaixa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.fluxocaixa_id_fluxocaixa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fluxocaixa_id_fluxocaixa_seq OWNER TO postgres;

--
-- TOC entry 3774 (class 0 OID 0)
-- Dependencies: 260
-- Name: fluxocaixa_id_fluxocaixa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.fluxocaixa_id_fluxocaixa_seq OWNED BY public.fluxocaixa.id_fluxocaixa;


--
-- TOC entry 223 (class 1259 OID 17209)
-- Name: futebol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.futebol (
    id_futebol integer NOT NULL,
    id_jogador integer,
    id_comissao_tecnica integer
);


ALTER TABLE public.futebol OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17208)
-- Name: futebol_id_futebol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.futebol_id_futebol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.futebol_id_futebol_seq OWNER TO postgres;

--
-- TOC entry 3775 (class 0 OID 0)
-- Dependencies: 222
-- Name: futebol_id_futebol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.futebol_id_futebol_seq OWNED BY public.futebol.id_futebol;


--
-- TOC entry 219 (class 1259 OID 17187)
-- Name: jogadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jogadores (
    id_jogador integer NOT NULL,
    cpf character varying(14) NOT NULL,
    registro_profissional character varying(20) NOT NULL,
    nome character varying(50) NOT NULL,
    posicao character varying(50) NOT NULL,
    data_nascimento date NOT NULL
);


ALTER TABLE public.jogadores OWNER TO postgres;

--
-- TOC entry 278 (class 1259 OID 17702)
-- Name: ident_funcionarios; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.ident_funcionarios AS
 SELECT jogadores.nome,
    jogadores.cpf,
    jogadores.posicao AS cargo
   FROM public.jogadores
UNION ALL
 SELECT comissao_tecnica.nome,
    comissao_tecnica.cpf,
    comissao_tecnica.cargo
   FROM public.comissao_tecnica;


ALTER TABLE public.ident_funcionarios OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17186)
-- Name: jogadores_id_jogador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jogadores_id_jogador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jogadores_id_jogador_seq OWNER TO postgres;

--
-- TOC entry 3776 (class 0 OID 0)
-- Dependencies: 218
-- Name: jogadores_id_jogador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jogadores_id_jogador_seq OWNED BY public.jogadores.id_jogador;


--
-- TOC entry 243 (class 1259 OID 17336)
-- Name: juridico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.juridico (
    id_juridico integer NOT NULL,
    id_contrato integer
);


ALTER TABLE public.juridico OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 17335)
-- Name: juridico_id_juridico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.juridico_id_juridico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.juridico_id_juridico_seq OWNER TO postgres;

--
-- TOC entry 3777 (class 0 OID 0)
-- Dependencies: 242
-- Name: juridico_id_juridico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.juridico_id_juridico_seq OWNED BY public.juridico.id_juridico;


--
-- TOC entry 225 (class 1259 OID 17226)
-- Name: logistica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logistica (
    id_logistica integer NOT NULL,
    local_saida character varying(50) NOT NULL,
    local_chegada character varying(50) NOT NULL,
    tipo_transporte character varying(50) NOT NULL,
    custo_translado character varying(50) NOT NULL,
    data_viagem date NOT NULL
);


ALTER TABLE public.logistica OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17225)
-- Name: logistica_id_logistica_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logistica_id_logistica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.logistica_id_logistica_seq OWNER TO postgres;

--
-- TOC entry 3778 (class 0 OID 0)
-- Dependencies: 224
-- Name: logistica_id_logistica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logistica_id_logistica_seq OWNED BY public.logistica.id_logistica;


--
-- TOC entry 239 (class 1259 OID 17297)
-- Name: marketing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marketing (
    id_marketing integer NOT NULL,
    id_campanha integer,
    id_patrocinador integer
);


ALTER TABLE public.marketing OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 17296)
-- Name: marketing_id_marketing_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marketing_id_marketing_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marketing_id_marketing_seq OWNER TO postgres;

--
-- TOC entry 3779 (class 0 OID 0)
-- Dependencies: 238
-- Name: marketing_id_marketing_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marketing_id_marketing_seq OWNED BY public.marketing.id_marketing;


--
-- TOC entry 233 (class 1259 OID 17269)
-- Name: medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medico (
    id_medico integer NOT NULL,
    id_tratamento integer
);


ALTER TABLE public.medico OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17268)
-- Name: medico_id_medico_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medico_id_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medico_id_medico_seq OWNER TO postgres;

--
-- TOC entry 3780 (class 0 OID 0)
-- Dependencies: 232
-- Name: medico_id_medico_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medico_id_medico_seq OWNED BY public.medico.id_medico;


--
-- TOC entry 229 (class 1259 OID 17240)
-- Name: operacional; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operacional (
    id_operacional integer NOT NULL,
    id_logistica integer,
    id_estrutura_fisica integer
);


ALTER TABLE public.operacional OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17239)
-- Name: operacional_id_operacional_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operacional_id_operacional_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.operacional_id_operacional_seq OWNER TO postgres;

--
-- TOC entry 3781 (class 0 OID 0)
-- Dependencies: 228
-- Name: operacional_id_operacional_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operacional_id_operacional_seq OWNED BY public.operacional.id_operacional;


--
-- TOC entry 237 (class 1259 OID 17288)
-- Name: patrocinadores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.patrocinadores (
    id_patrocinador integer NOT NULL,
    cnpj character varying(14) NOT NULL,
    valor_anual numeric(10,2) NOT NULL,
    responsavel character varying(50) NOT NULL,
    data_inicio date NOT NULL,
    data_fim date NOT NULL
);


ALTER TABLE public.patrocinadores OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 17287)
-- Name: patrocinadores_id_patrocinador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.patrocinadores_id_patrocinador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.patrocinadores_id_patrocinador_seq OWNER TO postgres;

--
-- TOC entry 3782 (class 0 OID 0)
-- Dependencies: 236
-- Name: patrocinadores_id_patrocinador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.patrocinadores_id_patrocinador_seq OWNED BY public.patrocinadores.id_patrocinador;


--
-- TOC entry 276 (class 1259 OID 17690)
-- Name: patrocinio_ano; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.patrocinio_ano AS
 SELECT EXTRACT(year FROM patrocinadores.data_inicio) AS ano,
    sum(patrocinadores.valor_anual) AS sum
   FROM public.patrocinadores
  GROUP BY (EXTRACT(year FROM patrocinadores.data_inicio))
UNION ALL
 SELECT EXTRACT(year FROM patrocinadores.data_fim) AS ano,
    sum(patrocinadores.valor_anual) AS sum
   FROM public.patrocinadores
  GROUP BY (EXTRACT(year FROM patrocinadores.data_fim))
  ORDER BY 1;


ALTER TABLE public.patrocinio_ano OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 17412)
-- Name: tipo_fluxo_caixa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_fluxo_caixa (
    id_tipo_fluxo_caixa integer NOT NULL,
    relatorio_lucros character varying(50) NOT NULL,
    relatorio_despesas character varying(50) NOT NULL,
    tipo_movimentacao character varying(50) NOT NULL,
    identificador_movimentacao character varying(50) NOT NULL
);


ALTER TABLE public.tipo_fluxo_caixa OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 17411)
-- Name: tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq OWNER TO postgres;

--
-- TOC entry 3783 (class 0 OID 0)
-- Dependencies: 244
-- Name: tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq OWNED BY public.tipo_fluxo_caixa.id_tipo_fluxo_caixa;


--
-- TOC entry 230 (class 1259 OID 17256)
-- Name: tratamentos_id_tratamento_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tratamentos_id_tratamento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tratamentos_id_tratamento_seq OWNER TO postgres;

--
-- TOC entry 3784 (class 0 OID 0)
-- Dependencies: 230
-- Name: tratamentos_id_tratamento_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tratamentos_id_tratamento_seq OWNED BY public.tratamentos.id_tratamento;


--
-- TOC entry 279 (class 1259 OID 17713)
-- Name: tratamentos_primeiro_trimestre; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.tratamentos_primeiro_trimestre AS
 SELECT tratamentos.tipo_tratamento,
    tratamentos.custo_tratamento,
    tratamentos.motivo_tratamento,
    tratamentos.profissional_responsavel
   FROM public.tratamentos
  WHERE ((tratamentos.data_prevista_final >= '2023-01-01'::date) AND (tratamentos.data_prevista_final <= '2023-03-31'::date));


ALTER TABLE public.tratamentos_primeiro_trimestre OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 17694)
-- Name: viagens_primeiro_trimestre; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.viagens_primeiro_trimestre AS
 SELECT logistica.data_viagem,
    logistica.tipo_transporte,
    logistica.custo_translado
   FROM public.logistica
  WHERE ((logistica.data_viagem >= '2023-01-01'::date) AND (logistica.data_viagem <= '2023-03-31'::date))
  ORDER BY logistica.data_viagem;


ALTER TABLE public.viagens_primeiro_trimestre OWNER TO postgres;

--
-- TOC entry 3410 (class 2604 OID 17570)
-- Name: caixa id_caixa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caixa ALTER COLUMN id_caixa SET DEFAULT nextval('public.caixa_id_caixa_seq'::regclass);


--
-- TOC entry 3396 (class 2604 OID 17284)
-- Name: campanhas id_campanha; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campanhas ALTER COLUMN id_campanha SET DEFAULT nextval('public.campanhas_id_campanha_seq'::regclass);


--
-- TOC entry 3386 (class 2604 OID 17157)
-- Name: clube id_clube; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clube ALTER COLUMN id_clube SET DEFAULT nextval('public.clube_id_clube_seq'::regclass);


--
-- TOC entry 3413 (class 2604 OID 17621)
-- Name: colaborador_financeiro id_colaborador_financeiro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_financeiro ALTER COLUMN id_colaborador_financeiro SET DEFAULT nextval('public.colaborador_financeiro_id_colaborador_financeiro_seq'::regclass);


--
-- TOC entry 3411 (class 2604 OID 17587)
-- Name: colaborador_futebol id_colaborador_futebol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_futebol ALTER COLUMN id_colaborador_futebol SET DEFAULT nextval('public.colaborador_futebol_id_colaborador_futebol_seq'::regclass);


--
-- TOC entry 3416 (class 2604 OID 17672)
-- Name: colaborador_juridico id_colaborador_juridico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_juridico ALTER COLUMN id_colaborador_juridico SET DEFAULT nextval('public.colaborador_juridico_id_colaborador_juridico_seq'::regclass);


--
-- TOC entry 3414 (class 2604 OID 17638)
-- Name: colaborador_marketing id_colaborador_marketing; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_marketing ALTER COLUMN id_colaborador_marketing SET DEFAULT nextval('public.colaborador_marketing_id_colaborador_marketing_seq'::regclass);


--
-- TOC entry 3412 (class 2604 OID 17604)
-- Name: colaborador_medico id_colaborador_medico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_medico ALTER COLUMN id_colaborador_medico SET DEFAULT nextval('public.colaborador_medico_id_colaborador_medico_seq'::regclass);


--
-- TOC entry 3415 (class 2604 OID 17655)
-- Name: colaborador_operacional id_colaborador_operacional; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_operacional ALTER COLUMN id_colaborador_operacional SET DEFAULT nextval('public.colaborador_operacional_id_colaborador_operacional_seq'::regclass);


--
-- TOC entry 3387 (class 2604 OID 17172)
-- Name: colaboradores id_colaborador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaboradores ALTER COLUMN id_colaborador SET DEFAULT nextval('public.colaboradores_id_colaborador_seq'::regclass);


--
-- TOC entry 3389 (class 2604 OID 17201)
-- Name: comissao_tecnica id_comissao_tecnica; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comissao_tecnica ALTER COLUMN id_comissao_tecnica SET DEFAULT nextval('public.comissao_tecnica_id_comissao_tecnica_seq'::regclass);


--
-- TOC entry 3399 (class 2604 OID 17317)
-- Name: contratos id_contrato; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contratos ALTER COLUMN id_contrato SET DEFAULT nextval('public.contratos_id_contrato_seq'::regclass);


--
-- TOC entry 3404 (class 2604 OID 17468)
-- Name: demandafinanceira_financeiro id_demandafinanceira_financeiro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_financeiro ALTER COLUMN id_demandafinanceira_financeiro SET DEFAULT nextval('public.demandafinanceira_financeiro_id_demandafinanceira_financeir_seq'::regclass);


--
-- TOC entry 3403 (class 2604 OID 17456)
-- Name: demandafinanceira_futebol id_demandafinanceira_futebol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_futebol ALTER COLUMN id_demandafinanceira_futebol SET DEFAULT nextval('public.demandafinanceira_futebol_id_demandafinanceira_futebol_seq'::regclass);


--
-- TOC entry 3408 (class 2604 OID 17516)
-- Name: demandafinanceira_juridico id_demandafinanceira_juridico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_juridico ALTER COLUMN id_demandafinanceira_juridico SET DEFAULT nextval('public.demandafinanceira_juridico_id_demandafinanceira_juridico_seq'::regclass);


--
-- TOC entry 3407 (class 2604 OID 17504)
-- Name: demandafinanceira_marketing id_demandafinanceira_marketing; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_marketing ALTER COLUMN id_demandafinanceira_marketing SET DEFAULT nextval('public.demandafinanceira_marketing_id_demandafinanceira_marketing_seq'::regclass);


--
-- TOC entry 3405 (class 2604 OID 17480)
-- Name: demandafinanceira_medico id_demandafinanceira_medico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_medico ALTER COLUMN id_demandafinanceira_medico SET DEFAULT nextval('public.demandafinanceira_medico_id_demandafinanceira_medico_seq'::regclass);


--
-- TOC entry 3406 (class 2604 OID 17492)
-- Name: demandafinanceira_operacional id_demandafinanceira_operacional; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_operacional ALTER COLUMN id_demandafinanceira_operacional SET DEFAULT nextval('public.demandafinanceira_operacional_id_demandafinanceira_operacio_seq'::regclass);


--
-- TOC entry 3392 (class 2604 OID 17236)
-- Name: estrutura_fisica id_estrutura_fisica; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estrutura_fisica ALTER COLUMN id_estrutura_fisica SET DEFAULT nextval('public.estrutura_fisica_id_estrutura_fisica_seq'::regclass);


--
-- TOC entry 3402 (class 2604 OID 17449)
-- Name: financeiro id_financeiro; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.financeiro ALTER COLUMN id_financeiro SET DEFAULT nextval('public.financeiro_id_financeiro_seq'::regclass);


--
-- TOC entry 3409 (class 2604 OID 17528)
-- Name: fluxocaixa id_fluxocaixa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa ALTER COLUMN id_fluxocaixa SET DEFAULT nextval('public.fluxocaixa_id_fluxocaixa_seq'::regclass);


--
-- TOC entry 3390 (class 2604 OID 17212)
-- Name: futebol id_futebol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.futebol ALTER COLUMN id_futebol SET DEFAULT nextval('public.futebol_id_futebol_seq'::regclass);


--
-- TOC entry 3388 (class 2604 OID 17190)
-- Name: jogadores id_jogador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogadores ALTER COLUMN id_jogador SET DEFAULT nextval('public.jogadores_id_jogador_seq'::regclass);


--
-- TOC entry 3400 (class 2604 OID 17339)
-- Name: juridico id_juridico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juridico ALTER COLUMN id_juridico SET DEFAULT nextval('public.juridico_id_juridico_seq'::regclass);


--
-- TOC entry 3391 (class 2604 OID 17229)
-- Name: logistica id_logistica; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistica ALTER COLUMN id_logistica SET DEFAULT nextval('public.logistica_id_logistica_seq'::regclass);


--
-- TOC entry 3398 (class 2604 OID 17300)
-- Name: marketing id_marketing; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing ALTER COLUMN id_marketing SET DEFAULT nextval('public.marketing_id_marketing_seq'::regclass);


--
-- TOC entry 3395 (class 2604 OID 17272)
-- Name: medico id_medico; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico ALTER COLUMN id_medico SET DEFAULT nextval('public.medico_id_medico_seq'::regclass);


--
-- TOC entry 3393 (class 2604 OID 17243)
-- Name: operacional id_operacional; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacional ALTER COLUMN id_operacional SET DEFAULT nextval('public.operacional_id_operacional_seq'::regclass);


--
-- TOC entry 3397 (class 2604 OID 17291)
-- Name: patrocinadores id_patrocinador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinadores ALTER COLUMN id_patrocinador SET DEFAULT nextval('public.patrocinadores_id_patrocinador_seq'::regclass);


--
-- TOC entry 3401 (class 2604 OID 17415)
-- Name: tipo_fluxo_caixa id_tipo_fluxo_caixa; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_fluxo_caixa ALTER COLUMN id_tipo_fluxo_caixa SET DEFAULT nextval('public.tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq'::regclass);


--
-- TOC entry 3394 (class 2604 OID 17260)
-- Name: tratamentos id_tratamento; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tratamentos ALTER COLUMN id_tratamento SET DEFAULT nextval('public.tratamentos_id_tratamento_seq'::regclass);


--
-- TOC entry 3736 (class 0 OID 17567)
-- Dependencies: 263
-- Data for Name: caixa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.caixa VALUES (1, NULL, 'Superávit de R$ 11,68 milhões.', 'Superávit de R$ 25,45 milhões.', 'Superávit de R$ 30,48 milhões.');
INSERT INTO public.caixa VALUES (2, NULL, 'Déficit de R$ 9,5 milhões.', 'Déficit de R$ 5,21 milhões.', 'Déficit de R$ 4 milhões.');
INSERT INTO public.caixa VALUES (3, NULL, 'Superávit de 19,38 milhões.', 'Deficit de R$ 10,21 milhões.', 'Superavit de R$ 4,56 milhões.');


--
-- TOC entry 3708 (class 0 OID 17281)
-- Dependencies: 235
-- Data for Name: campanhas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.campanhas VALUES (1, '24520,00', 'Audio Mix', 'Mais Colaboradores', '2023-01-11', '2023-01-12');
INSERT INTO public.campanhas VALUES (2, '28920,00', 'Doce Pao', 'Novas Parcerias', '2023-02-12', '2023-02-12');
INSERT INTO public.campanhas VALUES (3, '29630,00', 'Drinks Express', 'Franqueados', '2023-03-12', '2023-03-12');


--
-- TOC entry 3688 (class 0 OID 17154)
-- Dependencies: 215
-- Data for Name: clube; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clube VALUES (3, 'Grêmio', 'Grêmio FBPA', 'Arena do Grêmio', 'Humaitá', '1903-09-15');
INSERT INTO public.clube VALUES (4, 'Internacional', 'SC Internacional', 'Beira Rio', 'Padre Cacique', '1909-04-04');
INSERT INTO public.clube VALUES (5, 'Chapecoense', 'ACF', 'Arena Condá', 'Chapecó', '1973-05-10');


--
-- TOC entry 3742 (class 0 OID 17618)
-- Dependencies: 269
-- Data for Name: colaborador_financeiro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3738 (class 0 OID 17584)
-- Dependencies: 265
-- Data for Name: colaborador_futebol; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3748 (class 0 OID 17669)
-- Dependencies: 275
-- Data for Name: colaborador_juridico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3744 (class 0 OID 17635)
-- Dependencies: 271
-- Data for Name: colaborador_marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3740 (class 0 OID 17601)
-- Dependencies: 267
-- Data for Name: colaborador_medico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3746 (class 0 OID 17652)
-- Dependencies: 273
-- Data for Name: colaborador_operacional; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3690 (class 0 OID 17169)
-- Dependencies: 217
-- Data for Name: colaboradores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.colaboradores VALUES (1, '123.568.156-58', '854684', 'Arlindo', ' Jardineiro', '1975-06-12');
INSERT INTO public.colaboradores VALUES (2, '068.865.948-64', '886954', 'Jorge', ' Analista - Marketing', '1990-06-12');
INSERT INTO public.colaboradores VALUES (3, '059.568.964-78', '889457', 'Joedson', ' Analista - financeiro', '1985-09-10');


--
-- TOC entry 3694 (class 0 OID 17198)
-- Dependencies: 221
-- Data for Name: comissao_tecnica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.comissao_tecnica VALUES (1, '153.654.984-01', '125869', 'Pedro', ' tecnico ', '1987-05-12');
INSERT INTO public.comissao_tecnica VALUES (2, '098.654.687-58', '156879', 'Amaral', 'treinador', '1987-08-12');
INSERT INTO public.comissao_tecnica VALUES (3, '153.654.994-01', '135687', ' Lenocir ', ' olheiro ', '1997-09-12');


--
-- TOC entry 3714 (class 0 OID 17314)
-- Dependencies: 241
-- Data for Name: contratos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.contratos VALUES (1, NULL, NULL, NULL, 'patrocinio', 'clube', 'SportsBet', '086.568.489-58', '2022-01-01', '2023-01-01');
INSERT INTO public.contratos VALUES (2, NULL, NULL, NULL, 'Financiamento', 'Clube', 'LeonBank', '095.354.489-78', '2022-03-08', '2022-03-09');
INSERT INTO public.contratos VALUES (3, NULL, NULL, NULL, 'contrato de experiencia', 'clube', 'Recursos Humanos', '156.968.409-48', '2022-01-01', '2022-03-01');
INSERT INTO public.contratos VALUES (4, NULL, NULL, NULL, 'patrocinio', 'clube', 'SportsBet', '086.568.489-58', '2022-01-01', '2023-01-01');
INSERT INTO public.contratos VALUES (5, NULL, NULL, NULL, 'Financiamento', 'Clube', 'LeonBank', '095.354.489-78', '2022-03-08', '2022-03-09');
INSERT INTO public.contratos VALUES (6, NULL, NULL, NULL, 'contrato de experiencia', 'clube', 'Recursos Humanos', '156.968.409-48', '2022-01-01', '2022-03-01');


--
-- TOC entry 3724 (class 0 OID 17465)
-- Dependencies: 251
-- Data for Name: demandafinanceira_financeiro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3722 (class 0 OID 17453)
-- Dependencies: 249
-- Data for Name: demandafinanceira_futebol; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3732 (class 0 OID 17513)
-- Dependencies: 259
-- Data for Name: demandafinanceira_juridico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3730 (class 0 OID 17501)
-- Dependencies: 257
-- Data for Name: demandafinanceira_marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3726 (class 0 OID 17477)
-- Dependencies: 253
-- Data for Name: demandafinanceira_medico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3728 (class 0 OID 17489)
-- Dependencies: 255
-- Data for Name: demandafinanceira_operacional; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3700 (class 0 OID 17233)
-- Dependencies: 227
-- Data for Name: estrutura_fisica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estrutura_fisica VALUES (1, 'Dano na estrutura', 'Arquibancada Inferior Leste', 'Melnick Even Construtora', 'R$ 25.000,00', '2015-05-15');
INSERT INTO public.estrutura_fisica VALUES (2, 'Mobilia danificada', 'Vestiários', 'Mobilar Móveis', 'R$ 5.000,00', '2018-07-22');
INSERT INTO public.estrutura_fisica VALUES (3, 'Problema no encanamento', 'Banheiros - Superior', 'Prestador Jurandir', 'R$ 1.520,00', '2012-01-03');


--
-- TOC entry 3720 (class 0 OID 17446)
-- Dependencies: 247
-- Data for Name: financeiro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3734 (class 0 OID 17525)
-- Dependencies: 261
-- Data for Name: fluxocaixa; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3696 (class 0 OID 17209)
-- Dependencies: 223
-- Data for Name: futebol; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3692 (class 0 OID 17187)
-- Dependencies: 219
-- Data for Name: jogadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.jogadores VALUES (1, '546.548.745-88', '14002536', 'Ronaldinho Gramadense', 'Lateral (Esquerdo)', '1995-05-30');
INSERT INTO public.jogadores VALUES (2, '874.664.144-72', '14006548', 'Jaílson Guedes', 'Meia (Direita/Meio)', '1984-01-16');
INSERT INTO public.jogadores VALUES (3, '654.015.410-05', '14001546', 'Julian Ramirez', 'Atacante (Meio)', '2001-12-22');


--
-- TOC entry 3716 (class 0 OID 17336)
-- Dependencies: 243
-- Data for Name: juridico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3698 (class 0 OID 17226)
-- Dependencies: 225
-- Data for Name: logistica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.logistica VALUES (1, 'Floranópolis', 'Curitiba', 'Veiculo Pesado', 'Alto Custo', '2023-02-12');
INSERT INTO public.logistica VALUES (2, 'Balneario Camboriu', 'Lages', 'Veiculo leve', 'Medio Custo', '2023-02-25');
INSERT INTO public.logistica VALUES (3, 'Barretos', 'Rio de Janeiro', 'Aéreo', 'Alto Custo', '2023-04-01');


--
-- TOC entry 3712 (class 0 OID 17297)
-- Dependencies: 239
-- Data for Name: marketing; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3706 (class 0 OID 17269)
-- Dependencies: 233
-- Data for Name: medico; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3702 (class 0 OID 17240)
-- Dependencies: 229
-- Data for Name: operacional; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3710 (class 0 OID 17288)
-- Dependencies: 237
-- Data for Name: patrocinadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.patrocinadores VALUES (1, '123456789', 18000000.00, 'Banco BMG', '2021-01-01', '2023-01-01');
INSERT INTO public.patrocinadores VALUES (2, '246849854', 25000000.00, 'Umbro', '2019-01-01', '2023-01-01');
INSERT INTO public.patrocinadores VALUES (3, '165487235', 40000000.00, 'SportsBet', '2022-01-01', '2023-01-01');


--
-- TOC entry 3718 (class 0 OID 17412)
-- Dependencies: 245
-- Data for Name: tipo_fluxo_caixa; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_fluxo_caixa VALUES (1, '45000,00', '32000,00', 'Ingressos', 'ING4562023');
INSERT INTO public.tipo_fluxo_caixa VALUES (2, '500000,00', '150000,00', 'Venda Jogador', 'VEND052023');
INSERT INTO public.tipo_fluxo_caixa VALUES (3, '18450000,00', '320000,00', 'Cota TV', 'COT012023');


--
-- TOC entry 3704 (class 0 OID 17257)
-- Dependencies: 231
-- Data for Name: tratamentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tratamentos VALUES (2, NULL, 'Fisioterapia', 1800.00, 'Necessario', 'Adalberto', '2023-01-12', '2023-02-13');
INSERT INTO public.tratamentos VALUES (3, NULL, 'Medicação', 1750.00, 'Necessario', 'Manoel', '2023-01-05', '2023-06-20');
INSERT INTO public.tratamentos VALUES (4, NULL, 'Cirurgia', 18000.00, 'Necessario', 'Romario', '2023-02-12', '2023-02-13');


--
-- TOC entry 3785 (class 0 OID 0)
-- Dependencies: 262
-- Name: caixa_id_caixa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.caixa_id_caixa_seq', 3, true);


--
-- TOC entry 3786 (class 0 OID 0)
-- Dependencies: 234
-- Name: campanhas_id_campanha_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.campanhas_id_campanha_seq', 3, true);


--
-- TOC entry 3787 (class 0 OID 0)
-- Dependencies: 214
-- Name: clube_id_clube_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clube_id_clube_seq', 5, true);


--
-- TOC entry 3788 (class 0 OID 0)
-- Dependencies: 268
-- Name: colaborador_financeiro_id_colaborador_financeiro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaborador_financeiro_id_colaborador_financeiro_seq', 1, false);


--
-- TOC entry 3789 (class 0 OID 0)
-- Dependencies: 264
-- Name: colaborador_futebol_id_colaborador_futebol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaborador_futebol_id_colaborador_futebol_seq', 1, false);


--
-- TOC entry 3790 (class 0 OID 0)
-- Dependencies: 274
-- Name: colaborador_juridico_id_colaborador_juridico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaborador_juridico_id_colaborador_juridico_seq', 1, false);


--
-- TOC entry 3791 (class 0 OID 0)
-- Dependencies: 270
-- Name: colaborador_marketing_id_colaborador_marketing_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaborador_marketing_id_colaborador_marketing_seq', 1, false);


--
-- TOC entry 3792 (class 0 OID 0)
-- Dependencies: 266
-- Name: colaborador_medico_id_colaborador_medico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaborador_medico_id_colaborador_medico_seq', 1, false);


--
-- TOC entry 3793 (class 0 OID 0)
-- Dependencies: 272
-- Name: colaborador_operacional_id_colaborador_operacional_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaborador_operacional_id_colaborador_operacional_seq', 1, false);


--
-- TOC entry 3794 (class 0 OID 0)
-- Dependencies: 216
-- Name: colaboradores_id_colaborador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.colaboradores_id_colaborador_seq', 3, true);


--
-- TOC entry 3795 (class 0 OID 0)
-- Dependencies: 220
-- Name: comissao_tecnica_id_comissao_tecnica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comissao_tecnica_id_comissao_tecnica_seq', 3, true);


--
-- TOC entry 3796 (class 0 OID 0)
-- Dependencies: 240
-- Name: contratos_id_contrato_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contratos_id_contrato_seq', 6, true);


--
-- TOC entry 3797 (class 0 OID 0)
-- Dependencies: 250
-- Name: demandafinanceira_financeiro_id_demandafinanceira_financeir_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandafinanceira_financeiro_id_demandafinanceira_financeir_seq', 1, false);


--
-- TOC entry 3798 (class 0 OID 0)
-- Dependencies: 248
-- Name: demandafinanceira_futebol_id_demandafinanceira_futebol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandafinanceira_futebol_id_demandafinanceira_futebol_seq', 1, false);


--
-- TOC entry 3799 (class 0 OID 0)
-- Dependencies: 258
-- Name: demandafinanceira_juridico_id_demandafinanceira_juridico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandafinanceira_juridico_id_demandafinanceira_juridico_seq', 1, false);


--
-- TOC entry 3800 (class 0 OID 0)
-- Dependencies: 256
-- Name: demandafinanceira_marketing_id_demandafinanceira_marketing_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandafinanceira_marketing_id_demandafinanceira_marketing_seq', 1, false);


--
-- TOC entry 3801 (class 0 OID 0)
-- Dependencies: 252
-- Name: demandafinanceira_medico_id_demandafinanceira_medico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandafinanceira_medico_id_demandafinanceira_medico_seq', 1, false);


--
-- TOC entry 3802 (class 0 OID 0)
-- Dependencies: 254
-- Name: demandafinanceira_operacional_id_demandafinanceira_operacio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.demandafinanceira_operacional_id_demandafinanceira_operacio_seq', 1, false);


--
-- TOC entry 3803 (class 0 OID 0)
-- Dependencies: 226
-- Name: estrutura_fisica_id_estrutura_fisica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estrutura_fisica_id_estrutura_fisica_seq', 3, true);


--
-- TOC entry 3804 (class 0 OID 0)
-- Dependencies: 246
-- Name: financeiro_id_financeiro_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.financeiro_id_financeiro_seq', 1, false);


--
-- TOC entry 3805 (class 0 OID 0)
-- Dependencies: 260
-- Name: fluxocaixa_id_fluxocaixa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.fluxocaixa_id_fluxocaixa_seq', 1, false);


--
-- TOC entry 3806 (class 0 OID 0)
-- Dependencies: 222
-- Name: futebol_id_futebol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.futebol_id_futebol_seq', 1, false);


--
-- TOC entry 3807 (class 0 OID 0)
-- Dependencies: 218
-- Name: jogadores_id_jogador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jogadores_id_jogador_seq', 3, true);


--
-- TOC entry 3808 (class 0 OID 0)
-- Dependencies: 242
-- Name: juridico_id_juridico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.juridico_id_juridico_seq', 1, false);


--
-- TOC entry 3809 (class 0 OID 0)
-- Dependencies: 224
-- Name: logistica_id_logistica_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logistica_id_logistica_seq', 3, true);


--
-- TOC entry 3810 (class 0 OID 0)
-- Dependencies: 238
-- Name: marketing_id_marketing_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marketing_id_marketing_seq', 1, false);


--
-- TOC entry 3811 (class 0 OID 0)
-- Dependencies: 232
-- Name: medico_id_medico_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medico_id_medico_seq', 1, false);


--
-- TOC entry 3812 (class 0 OID 0)
-- Dependencies: 228
-- Name: operacional_id_operacional_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operacional_id_operacional_seq', 1, false);


--
-- TOC entry 3813 (class 0 OID 0)
-- Dependencies: 236
-- Name: patrocinadores_id_patrocinador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.patrocinadores_id_patrocinador_seq', 3, true);


--
-- TOC entry 3814 (class 0 OID 0)
-- Dependencies: 244
-- Name: tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_fluxo_caixa_id_tipo_fluxo_caixa_seq', 3, true);


--
-- TOC entry 3815 (class 0 OID 0)
-- Dependencies: 230
-- Name: tratamentos_id_tratamento_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tratamentos_id_tratamento_seq', 4, true);


--
-- TOC entry 3488 (class 2606 OID 17572)
-- Name: caixa caixa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caixa
    ADD CONSTRAINT caixa_pkey PRIMARY KEY (id_caixa);


--
-- TOC entry 3458 (class 2606 OID 17286)
-- Name: campanhas campanhas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.campanhas
    ADD CONSTRAINT campanhas_pkey PRIMARY KEY (id_campanha);


--
-- TOC entry 3418 (class 2606 OID 17167)
-- Name: clube clube_local_estadio_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clube
    ADD CONSTRAINT clube_local_estadio_key UNIQUE (local_estadio);


--
-- TOC entry 3420 (class 2606 OID 17165)
-- Name: clube clube_nome_estadio_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clube
    ADD CONSTRAINT clube_nome_estadio_key UNIQUE (nome_estadio);


--
-- TOC entry 3422 (class 2606 OID 17163)
-- Name: clube clube_nome_fantasia_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clube
    ADD CONSTRAINT clube_nome_fantasia_key UNIQUE (nome_fantasia);


--
-- TOC entry 3424 (class 2606 OID 17161)
-- Name: clube clube_nome_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clube
    ADD CONSTRAINT clube_nome_key UNIQUE (nome);


--
-- TOC entry 3426 (class 2606 OID 17159)
-- Name: clube clube_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clube
    ADD CONSTRAINT clube_pkey PRIMARY KEY (id_clube);


--
-- TOC entry 3494 (class 2606 OID 17623)
-- Name: colaborador_financeiro colaborador_financeiro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_financeiro
    ADD CONSTRAINT colaborador_financeiro_pkey PRIMARY KEY (id_colaborador_financeiro);


--
-- TOC entry 3490 (class 2606 OID 17589)
-- Name: colaborador_futebol colaborador_futebol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_futebol
    ADD CONSTRAINT colaborador_futebol_pkey PRIMARY KEY (id_colaborador_futebol);


--
-- TOC entry 3500 (class 2606 OID 17674)
-- Name: colaborador_juridico colaborador_juridico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_juridico
    ADD CONSTRAINT colaborador_juridico_pkey PRIMARY KEY (id_colaborador_juridico);


--
-- TOC entry 3496 (class 2606 OID 17640)
-- Name: colaborador_marketing colaborador_marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_marketing
    ADD CONSTRAINT colaborador_marketing_pkey PRIMARY KEY (id_colaborador_marketing);


--
-- TOC entry 3492 (class 2606 OID 17606)
-- Name: colaborador_medico colaborador_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_medico
    ADD CONSTRAINT colaborador_medico_pkey PRIMARY KEY (id_colaborador_medico);


--
-- TOC entry 3498 (class 2606 OID 17657)
-- Name: colaborador_operacional colaborador_operacional_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_operacional
    ADD CONSTRAINT colaborador_operacional_pkey PRIMARY KEY (id_colaborador_operacional);


--
-- TOC entry 3428 (class 2606 OID 17176)
-- Name: colaboradores colaboradores_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaboradores
    ADD CONSTRAINT colaboradores_cpf_key UNIQUE (cpf);


--
-- TOC entry 3430 (class 2606 OID 17174)
-- Name: colaboradores colaboradores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaboradores
    ADD CONSTRAINT colaboradores_pkey PRIMARY KEY (id_colaborador);


--
-- TOC entry 3432 (class 2606 OID 17178)
-- Name: colaboradores colaboradores_registro_profissional_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaboradores
    ADD CONSTRAINT colaboradores_registro_profissional_key UNIQUE (registro_profissional);


--
-- TOC entry 3440 (class 2606 OID 17205)
-- Name: comissao_tecnica comissao_tecnica_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comissao_tecnica
    ADD CONSTRAINT comissao_tecnica_cpf_key UNIQUE (cpf);


--
-- TOC entry 3442 (class 2606 OID 17203)
-- Name: comissao_tecnica comissao_tecnica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comissao_tecnica
    ADD CONSTRAINT comissao_tecnica_pkey PRIMARY KEY (id_comissao_tecnica);


--
-- TOC entry 3444 (class 2606 OID 17207)
-- Name: comissao_tecnica comissao_tecnica_registro_profissional_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comissao_tecnica
    ADD CONSTRAINT comissao_tecnica_registro_profissional_key UNIQUE (registro_profissional);


--
-- TOC entry 3466 (class 2606 OID 17319)
-- Name: contratos contratos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_pkey PRIMARY KEY (id_contrato);


--
-- TOC entry 3476 (class 2606 OID 17470)
-- Name: demandafinanceira_financeiro demandafinanceira_financeiro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_financeiro
    ADD CONSTRAINT demandafinanceira_financeiro_pkey PRIMARY KEY (id_demandafinanceira_financeiro);


--
-- TOC entry 3474 (class 2606 OID 17458)
-- Name: demandafinanceira_futebol demandafinanceira_futebol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_futebol
    ADD CONSTRAINT demandafinanceira_futebol_pkey PRIMARY KEY (id_demandafinanceira_futebol);


--
-- TOC entry 3484 (class 2606 OID 17518)
-- Name: demandafinanceira_juridico demandafinanceira_juridico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_juridico
    ADD CONSTRAINT demandafinanceira_juridico_pkey PRIMARY KEY (id_demandafinanceira_juridico);


--
-- TOC entry 3482 (class 2606 OID 17506)
-- Name: demandafinanceira_marketing demandafinanceira_marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_marketing
    ADD CONSTRAINT demandafinanceira_marketing_pkey PRIMARY KEY (id_demandafinanceira_marketing);


--
-- TOC entry 3478 (class 2606 OID 17482)
-- Name: demandafinanceira_medico demandafinanceira_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_medico
    ADD CONSTRAINT demandafinanceira_medico_pkey PRIMARY KEY (id_demandafinanceira_medico);


--
-- TOC entry 3480 (class 2606 OID 17494)
-- Name: demandafinanceira_operacional demandafinanceira_operacional_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_operacional
    ADD CONSTRAINT demandafinanceira_operacional_pkey PRIMARY KEY (id_demandafinanceira_operacional);


--
-- TOC entry 3450 (class 2606 OID 17238)
-- Name: estrutura_fisica estrutura_fisica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estrutura_fisica
    ADD CONSTRAINT estrutura_fisica_pkey PRIMARY KEY (id_estrutura_fisica);


--
-- TOC entry 3472 (class 2606 OID 17451)
-- Name: financeiro financeiro_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.financeiro
    ADD CONSTRAINT financeiro_pkey PRIMARY KEY (id_financeiro);


--
-- TOC entry 3486 (class 2606 OID 17530)
-- Name: fluxocaixa fluxocaixa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_pkey PRIMARY KEY (id_fluxocaixa);


--
-- TOC entry 3446 (class 2606 OID 17214)
-- Name: futebol futebol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.futebol
    ADD CONSTRAINT futebol_pkey PRIMARY KEY (id_futebol);


--
-- TOC entry 3434 (class 2606 OID 17194)
-- Name: jogadores jogadores_cpf_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogadores
    ADD CONSTRAINT jogadores_cpf_key UNIQUE (cpf);


--
-- TOC entry 3436 (class 2606 OID 17192)
-- Name: jogadores jogadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogadores
    ADD CONSTRAINT jogadores_pkey PRIMARY KEY (id_jogador);


--
-- TOC entry 3438 (class 2606 OID 17196)
-- Name: jogadores jogadores_registro_profissional_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jogadores
    ADD CONSTRAINT jogadores_registro_profissional_key UNIQUE (registro_profissional);


--
-- TOC entry 3468 (class 2606 OID 17341)
-- Name: juridico juridico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juridico
    ADD CONSTRAINT juridico_pkey PRIMARY KEY (id_juridico);


--
-- TOC entry 3448 (class 2606 OID 17231)
-- Name: logistica logistica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logistica
    ADD CONSTRAINT logistica_pkey PRIMARY KEY (id_logistica);


--
-- TOC entry 3464 (class 2606 OID 17302)
-- Name: marketing marketing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_pkey PRIMARY KEY (id_marketing);


--
-- TOC entry 3456 (class 2606 OID 17274)
-- Name: medico medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (id_medico);


--
-- TOC entry 3452 (class 2606 OID 17245)
-- Name: operacional operacional_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacional
    ADD CONSTRAINT operacional_pkey PRIMARY KEY (id_operacional);


--
-- TOC entry 3460 (class 2606 OID 17295)
-- Name: patrocinadores patrocinadores_cnpj_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinadores
    ADD CONSTRAINT patrocinadores_cnpj_key UNIQUE (cnpj);


--
-- TOC entry 3462 (class 2606 OID 17293)
-- Name: patrocinadores patrocinadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.patrocinadores
    ADD CONSTRAINT patrocinadores_pkey PRIMARY KEY (id_patrocinador);


--
-- TOC entry 3470 (class 2606 OID 17417)
-- Name: tipo_fluxo_caixa tipo_fluxo_caixa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_fluxo_caixa
    ADD CONSTRAINT tipo_fluxo_caixa_pkey PRIMARY KEY (id_tipo_fluxo_caixa);


--
-- TOC entry 3454 (class 2606 OID 17262)
-- Name: tratamentos tratamentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tratamentos
    ADD CONSTRAINT tratamentos_pkey PRIMARY KEY (id_tratamento);


--
-- TOC entry 3527 (class 2606 OID 17573)
-- Name: caixa caixa_id_fluxocaixa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.caixa
    ADD CONSTRAINT caixa_id_fluxocaixa_fkey FOREIGN KEY (id_fluxocaixa) REFERENCES public.fluxocaixa(id_fluxocaixa);


--
-- TOC entry 3532 (class 2606 OID 17624)
-- Name: colaborador_financeiro colaborador_financeiro_id_colaborador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_financeiro
    ADD CONSTRAINT colaborador_financeiro_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id_colaborador);


--
-- TOC entry 3533 (class 2606 OID 17629)
-- Name: colaborador_financeiro colaborador_financeiro_id_financeiro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_financeiro
    ADD CONSTRAINT colaborador_financeiro_id_financeiro_fkey FOREIGN KEY (id_financeiro) REFERENCES public.financeiro(id_financeiro);


--
-- TOC entry 3528 (class 2606 OID 17590)
-- Name: colaborador_futebol colaborador_futebol_id_colaborador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_futebol
    ADD CONSTRAINT colaborador_futebol_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id_colaborador);


--
-- TOC entry 3529 (class 2606 OID 17595)
-- Name: colaborador_futebol colaborador_futebol_id_futebol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_futebol
    ADD CONSTRAINT colaborador_futebol_id_futebol_fkey FOREIGN KEY (id_futebol) REFERENCES public.futebol(id_futebol);


--
-- TOC entry 3538 (class 2606 OID 17675)
-- Name: colaborador_juridico colaborador_juridico_id_colaborador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_juridico
    ADD CONSTRAINT colaborador_juridico_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id_colaborador);


--
-- TOC entry 3539 (class 2606 OID 17680)
-- Name: colaborador_juridico colaborador_juridico_id_juridico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_juridico
    ADD CONSTRAINT colaborador_juridico_id_juridico_fkey FOREIGN KEY (id_juridico) REFERENCES public.juridico(id_juridico);


--
-- TOC entry 3534 (class 2606 OID 17641)
-- Name: colaborador_marketing colaborador_marketing_id_colaborador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_marketing
    ADD CONSTRAINT colaborador_marketing_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id_colaborador);


--
-- TOC entry 3535 (class 2606 OID 17646)
-- Name: colaborador_marketing colaborador_marketing_id_marketing_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_marketing
    ADD CONSTRAINT colaborador_marketing_id_marketing_fkey FOREIGN KEY (id_marketing) REFERENCES public.marketing(id_marketing);


--
-- TOC entry 3530 (class 2606 OID 17607)
-- Name: colaborador_medico colaborador_medico_id_colaborador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_medico
    ADD CONSTRAINT colaborador_medico_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id_colaborador);


--
-- TOC entry 3531 (class 2606 OID 17612)
-- Name: colaborador_medico colaborador_medico_id_medico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_medico
    ADD CONSTRAINT colaborador_medico_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);


--
-- TOC entry 3536 (class 2606 OID 17658)
-- Name: colaborador_operacional colaborador_operacional_id_colaborador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_operacional
    ADD CONSTRAINT colaborador_operacional_id_colaborador_fkey FOREIGN KEY (id_colaborador) REFERENCES public.colaboradores(id_colaborador);


--
-- TOC entry 3537 (class 2606 OID 17663)
-- Name: colaborador_operacional colaborador_operacional_id_operacional_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.colaborador_operacional
    ADD CONSTRAINT colaborador_operacional_id_operacional_fkey FOREIGN KEY (id_operacional) REFERENCES public.operacional(id_operacional);


--
-- TOC entry 3509 (class 2606 OID 17325)
-- Name: contratos contratos_id_jogador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_id_jogador_fkey FOREIGN KEY (id_jogador) REFERENCES public.jogadores(id_jogador);


--
-- TOC entry 3510 (class 2606 OID 17330)
-- Name: contratos contratos_id_marketing_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_id_marketing_fkey FOREIGN KEY (id_marketing) REFERENCES public.marketing(id_marketing);


--
-- TOC entry 3511 (class 2606 OID 17320)
-- Name: contratos contratos_id_patrocinador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contratos
    ADD CONSTRAINT contratos_id_patrocinador_fkey FOREIGN KEY (id_patrocinador) REFERENCES public.patrocinadores(id_patrocinador);


--
-- TOC entry 3515 (class 2606 OID 17471)
-- Name: demandafinanceira_financeiro demandafinanceira_financeiro_id_financeiro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_financeiro
    ADD CONSTRAINT demandafinanceira_financeiro_id_financeiro_fkey FOREIGN KEY (id_financeiro) REFERENCES public.financeiro(id_financeiro);


--
-- TOC entry 3514 (class 2606 OID 17459)
-- Name: demandafinanceira_futebol demandafinanceira_futebol_id_futebol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_futebol
    ADD CONSTRAINT demandafinanceira_futebol_id_futebol_fkey FOREIGN KEY (id_futebol) REFERENCES public.futebol(id_futebol);


--
-- TOC entry 3519 (class 2606 OID 17519)
-- Name: demandafinanceira_juridico demandafinanceira_juridico_id_juridico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_juridico
    ADD CONSTRAINT demandafinanceira_juridico_id_juridico_fkey FOREIGN KEY (id_juridico) REFERENCES public.juridico(id_juridico);


--
-- TOC entry 3518 (class 2606 OID 17507)
-- Name: demandafinanceira_marketing demandafinanceira_marketing_id_marketing_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_marketing
    ADD CONSTRAINT demandafinanceira_marketing_id_marketing_fkey FOREIGN KEY (id_marketing) REFERENCES public.marketing(id_marketing);


--
-- TOC entry 3516 (class 2606 OID 17483)
-- Name: demandafinanceira_medico demandafinanceira_medico_id_medico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_medico
    ADD CONSTRAINT demandafinanceira_medico_id_medico_fkey FOREIGN KEY (id_medico) REFERENCES public.medico(id_medico);


--
-- TOC entry 3517 (class 2606 OID 17495)
-- Name: demandafinanceira_operacional demandafinanceira_operacional_id_operacional_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.demandafinanceira_operacional
    ADD CONSTRAINT demandafinanceira_operacional_id_operacional_fkey FOREIGN KEY (id_operacional) REFERENCES public.operacional(id_operacional);


--
-- TOC entry 3513 (class 2606 OID 17578)
-- Name: financeiro financeiro_id_caixa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.financeiro
    ADD CONSTRAINT financeiro_id_caixa_fkey FOREIGN KEY (id_caixa) REFERENCES public.caixa(id_caixa);


--
-- TOC entry 3520 (class 2606 OID 17541)
-- Name: fluxocaixa fluxocaixa_id_demandafinanceira_financeiro_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_demandafinanceira_financeiro_fkey FOREIGN KEY (id_demandafinanceira_financeiro) REFERENCES public.demandafinanceira_financeiro(id_demandafinanceira_financeiro);


--
-- TOC entry 3521 (class 2606 OID 17536)
-- Name: fluxocaixa fluxocaixa_id_demandafinanceira_futebol_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_demandafinanceira_futebol_fkey FOREIGN KEY (id_demandafinanceira_futebol) REFERENCES public.demandafinanceira_futebol(id_demandafinanceira_futebol);


--
-- TOC entry 3522 (class 2606 OID 17556)
-- Name: fluxocaixa fluxocaixa_id_demandafinanceira_juridico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_demandafinanceira_juridico_fkey FOREIGN KEY (id_demandafinanceira_juridico) REFERENCES public.demandafinanceira_juridico(id_demandafinanceira_juridico);


--
-- TOC entry 3523 (class 2606 OID 17551)
-- Name: fluxocaixa fluxocaixa_id_demandafinanceira_marketing_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_demandafinanceira_marketing_fkey FOREIGN KEY (id_demandafinanceira_marketing) REFERENCES public.demandafinanceira_marketing(id_demandafinanceira_marketing);


--
-- TOC entry 3524 (class 2606 OID 17561)
-- Name: fluxocaixa fluxocaixa_id_demandafinanceira_medico_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_demandafinanceira_medico_fkey FOREIGN KEY (id_demandafinanceira_medico) REFERENCES public.demandafinanceira_medico(id_demandafinanceira_medico);


--
-- TOC entry 3525 (class 2606 OID 17546)
-- Name: fluxocaixa fluxocaixa_id_demandafinanceira_operacional_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_demandafinanceira_operacional_fkey FOREIGN KEY (id_demandafinanceira_operacional) REFERENCES public.demandafinanceira_operacional(id_demandafinanceira_operacional);


--
-- TOC entry 3526 (class 2606 OID 17531)
-- Name: fluxocaixa fluxocaixa_id_tipo_fluxo_caixa_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fluxocaixa
    ADD CONSTRAINT fluxocaixa_id_tipo_fluxo_caixa_fkey FOREIGN KEY (id_tipo_fluxo_caixa) REFERENCES public.tipo_fluxo_caixa(id_tipo_fluxo_caixa);


--
-- TOC entry 3501 (class 2606 OID 17220)
-- Name: futebol futebol_id_comissao_tecnica_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.futebol
    ADD CONSTRAINT futebol_id_comissao_tecnica_fkey FOREIGN KEY (id_comissao_tecnica) REFERENCES public.comissao_tecnica(id_comissao_tecnica);


--
-- TOC entry 3502 (class 2606 OID 17215)
-- Name: futebol futebol_id_jogador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.futebol
    ADD CONSTRAINT futebol_id_jogador_fkey FOREIGN KEY (id_jogador) REFERENCES public.jogadores(id_jogador);


--
-- TOC entry 3512 (class 2606 OID 17342)
-- Name: juridico juridico_id_contrato_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.juridico
    ADD CONSTRAINT juridico_id_contrato_fkey FOREIGN KEY (id_contrato) REFERENCES public.contratos(id_contrato);


--
-- TOC entry 3507 (class 2606 OID 17303)
-- Name: marketing marketing_id_campanha_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_id_campanha_fkey FOREIGN KEY (id_campanha) REFERENCES public.campanhas(id_campanha);


--
-- TOC entry 3508 (class 2606 OID 17308)
-- Name: marketing marketing_id_patrocinador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marketing
    ADD CONSTRAINT marketing_id_patrocinador_fkey FOREIGN KEY (id_patrocinador) REFERENCES public.patrocinadores(id_patrocinador);


--
-- TOC entry 3506 (class 2606 OID 17275)
-- Name: medico medico_id_tratamento_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medico
    ADD CONSTRAINT medico_id_tratamento_fkey FOREIGN KEY (id_tratamento) REFERENCES public.tratamentos(id_tratamento);


--
-- TOC entry 3503 (class 2606 OID 17251)
-- Name: operacional operacional_id_estrutura_fisica_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacional
    ADD CONSTRAINT operacional_id_estrutura_fisica_fkey FOREIGN KEY (id_estrutura_fisica) REFERENCES public.estrutura_fisica(id_estrutura_fisica);


--
-- TOC entry 3504 (class 2606 OID 17246)
-- Name: operacional operacional_id_logistica_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operacional
    ADD CONSTRAINT operacional_id_logistica_fkey FOREIGN KEY (id_logistica) REFERENCES public.logistica(id_logistica);


--
-- TOC entry 3505 (class 2606 OID 17263)
-- Name: tratamentos tratamentos_id_jogador_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tratamentos
    ADD CONSTRAINT tratamentos_id_jogador_fkey FOREIGN KEY (id_jogador) REFERENCES public.jogadores(id_jogador);


-- Completed on 2023-06-02 17:35:34 -03

--
-- PostgreSQL database dump complete
--

