
create database bd_sasc;

use bd_sasc;

create table tb_endereco(
	id binary(16) not null,
    cep varchar(255) not null,
    logadouro varchar(255) not null,
    numero varchar(255) not null,
    bairro varchar(255) not null,
    cidade varchar(255) not null,
    estado varchar(255) not null,
    primary key(id)
);

create table tb_fabricante(
	id binary(16) not null,
    titulo varchar(255) not null unique,
    cnpj varchar(255) not null unique,
    primary key(id)
);

create table tb_tipoFuncionario(
	id binary(16) not null,
    categoria varchar(255) not null unique,
    primary key(id)
);

create table tb_unidade(
	id binary(16) not null,
    nome varchar(255) not null unique,
    id_endereco binary(16) not null,
    primary key(id),
    foreign key(id_endereco) references tb_endereco (id)
);

create table tb_setor (
	id binary(16)not null,
    titulo varchar(255) not null unique,
    id_unidade binary(16) not null,
    primary key(id),
    foreign key(id_unidade) references tb_unidade (id)
);

create table tb_funcionario(
	id binary(16) not null,
    nome varchar(255) not null,
    email varchar(255) not null unique,
    senha varchar(255) not null,
    id_setor binary(16) not null,
    id_tipofuncionario binary(16) not null,
    primary key(id),
    foreign key(id_setor) references tb_setor(id),
    foreign key(id_tipofuncionario) references tb_tipofuncionario(id)
);

create table tb_tipoequipamento(
	id binary(16) not null,
    tipo varchar(255) not null unique,
    primary key (id)
);

create table tb_equipamento (
	id binary(16) not null,
    modelo varchar(255) not null ,
    valor decimal(12,2) not null,
    consumoNominal decimal(12,2) not null,
    dataCompra date not null ,
    id_setor binary(16) not null,
    id_fabricante binary(16) not null,
    id_tipoequipamento binary(16) not null,
    primary key(id),
    foreign key(id_setor) references tb_setor(id),
    foreign key(id_fabricante) references tb_fabricante(id),
    foreign key(id_tipoequipamento) references tb_tipoequipamento(id)
);

create table tb_consumo_equipamento(
	id binary(16) not null,
    consumo decimal(12,2) not null,
    dataConsumo datetime not null,
    idEquipamento binary(16) not null,
    primary key (id),
    foreign key (idEquipamento) references tb_equipamento(id)
);