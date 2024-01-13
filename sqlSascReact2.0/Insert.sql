use bd_sasc_react;

-- ///////////////////////////////////////////////////////////////INSERT TIPO EQUIPAMENTO /////////////////////////////////////

insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Servidor");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "OLT");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Unidade de Rede Óptica");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Repetidor");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Splitter");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Bridge");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Switch");
insert into tb_tipoequipamento value(UUID_TO_BIN(UUID()), "Roteador");

select *, BIN_TO_UUID(id) as "ID" from tb_tipoequipamento;

-- /////////////////////////////////////// Insert fabricante /////////////////////////////////

insert into tb_fabricante values
(UUID_TO_BIN(UUID()),"DELL","72381189001001");

insert into tb_fabricante values
(UUID_TO_BIN(UUID()),"VAIO","23456789012341"),
(UUID_TO_BIN(UUID()), "APPLE","00623904000174"),
(UUID_TO_BIN(UUID()), "SAMSUNG", "00280273000218"),
(UUID_TO_BIN(UUID()), "ACER", "01575428000125"),
(UUID_TO_BIN(UUID()), "Lenovo", "98745428000125");

select*, BIN_TO_UUID(id) as "ID" from tb_fabricante;

-- ///////////////////////////////////////////////////INSERT TIPOS USUARIO//////////////////////////////////////

insert into tb_tipofuncionario values
(UUID_TO_BIN(UUID()), "Adm"),
(UUID_TO_BIN(UUID()), "Padrão"); 

select *,BIN_TO_UUID(id) as "ID Tipo Usuario" from tb_tipofuncionario;

-- ///////////////////////////////////////////////////INSERT ENDERECO //////////////////////////////////////////

insert into tb_endereco value (UUID_TO_BIN(UUID()), "00000001", "R. Centenário do Sul" , " 2-90", "Demarchi" , "São Bernardo do Campo" , "SP");
insert into tb_endereco value(UUID_TO_BIN(UUID()), "00000002", "Rodovia Luis Augusto de Oliveira" , "Km 148.8 S/n", "Zona Rural", "São Carlos", "SP");
insert into tb_endereco value(UUID_TO_BIN(UUID()), "00000004", "R. Antonio Singer", "6751", "Campo Largo da Roseira", "São José dos Pinhais", "SP");
insert into tb_endereco value(UUID_TO_BIN(UUID()), "00000003",  "Av. Carlos Pedroso da Silveira" , "10000", "Jardim Santa Tereza", "Taubaté", "SP");

select *,BIN_TO_UUID(id) as "ID Enderço Unidade" from tb_endereco;

-- ////////////////////////////////////////////////////////////////// INSERT UNIDADE ////////////////////////////////////////////////

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade Anchieta - São Bernardo do Campo",
	UUID_TO_BIN("881ff3b2-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade São Carlos",
	UUID_TO_BIN("882cc122-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade Taubaté",
	UUID_TO_BIN("8854d202-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade São José dos Pinhais",
	UUID_TO_BIN("8842eadf-8af0-11ee-9f00-80fa5ba2925a")
);

select *,BIN_TO_UUID(id) as "ID Unidade", BIN_TO_UUID(id_endereco) as "ID Endereço" from tb_unidade;

-- /////////////////////////////////////////////////////////// INSERT SETORES //////////////////////////////////////////////////////////////

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SBC - 03/20",
	UUID_TO_BIN("2ef28841-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SBC - 04/21",
	UUID_TO_BIN("2ef28841-8af1-11ee-9f00-80fa5ba2925a")	
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SBC - 05/22",
	UUID_TO_BIN("2ef28841-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SC - 17/02",
	UUID_TO_BIN("2f0cb9b1-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
	"SC - 18/03",
	UUID_TO_BIN("2f0cb9b1-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SC - 19/04",
	UUID_TO_BIN("2f0cb9b1-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "T - 07/14",
	UUID_TO_BIN("2f1a345f-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "T - 08/15",
	UUID_TO_BIN("2f1a345f-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "T - 09/16",
	UUID_TO_BIN("2f1a345f-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SJP - 10/01",
	UUID_TO_BIN("1d5cd5cb-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SJP - 11/09",
	UUID_TO_BIN("1d5cd5cb-8af1-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SJP - 12/13",
	UUID_TO_BIN("1d5cd5cb-8af1-11ee-9f00-80fa5ba2925a")
);

select *,BIN_TO_UUID(id) as "ID Setor", BIN_TO_UUID(id_unidade) as "ID Unidade" from tb_setor;

-- ////////////////////////////////////////////////////////// INSERT USUARIOS /////////////////////////////////////////////////////

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Gabriela Ramos",
	"gabi@email.com",
	"chihuahua",
    UUID_TO_BIN("c3be9294-8af1-11ee-9f00-80fa5ba2925a"),
	UUID_TO_BIN("80029c26-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Gabriel Trindade",
	"gabriel@email.com",
	"marlborodemelancia",
	UUID_TO_BIN("c40629b3-8af1-11ee-9f00-80fa5ba2925a"),
    UUID_TO_BIN("80029c26-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Felipe Fonseca",
	"felipe@email.com",
	"poddebanana",	
    UUID_TO_BIN("c430c5fb-8af1-11ee-9f00-80fa5ba2925a"),
	UUID_TO_BIN("80029c26-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Denis Santana",
	"denis@email.com",
	"bolodeprestigio",
	UUID_TO_BIN("c45880c1-8af1-11ee-9f00-80fa5ba2925a"),
	UUID_TO_BIN("80029c26-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Janaina Mota",
	"jana@email.com",
	"janaamaofelipe",
	UUID_TO_BIN("c3cd710e-8af1-11ee-9f00-80fa5ba2925a"),
    UUID_TO_BIN("8002a37c-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Liandra Morais",
	"lili@email.com",
	"serramaltegeladinha",
	UUID_TO_BIN("c4192aa1-8af1-11ee-9f00-80fa5ba2925a"),
	UUID_TO_BIN("8002a37c-8af0-11ee-9f00-80fa5ba2925a")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Thiago Uchiha",
	"titiBoladefogo@email.com",
	"MonsterMango123",
	UUID_TO_BIN("c43f2e1e-8af1-11ee-9f00-80fa5ba2925a"),
	UUID_TO_BIN("8002a37c-8af0-11ee-9f00-80fa5ba2925a")
);
INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Jessica Uzumaki",
	"jessicaozonaleste@email.com",
	"iloveRBD2005",
	UUID_TO_BIN("c4687264-8af1-11ee-9f00-80fa5ba2925a"),
	UUID_TO_BIN("8002a37c-8af0-11ee-9f00-80fa5ba2925a")
);

select *,BIN_TO_UUID(id) as "ID usuario" from tb_funcionario;

select tb_funcionario.nome as "ID usuario", tb_funcionario.email as "Email", tb_tipofuncionario.categoria as "Categoria" 
from tb_funcionario
Inner join tb_tipofuncionario on tb_funcionario.id_tipofuncionario = tb_tipofuncionario.id;

select tb_funcionario.nome as "ID usuario", tb_funcionario.email as "Email", tb_tipofuncionario.categoria as "Categoria" , tb_setor.titulo as "Setor"
from tb_funcionario
Inner join tb_tipofuncionario on tb_funcionario.id_tipofuncionario = tb_tipofuncionario.id
inner join tb_setor on tb_funcionario.id_setor = tb_setor.id
order by tb_funcionario.nome ;

-- /////////////////////////////////////////////////////////////////INSERT Modelo//////////////////////////////////////

insert into tb_modelo values (
	UUID_TO_BIN(UUID()), "R750 Xeon 6330", "14000",      
    UUID_TO_BIN("74c47aba-8af0-11ee-9f00-80fa5ba2925a"), 
    UUID_TO_BIN("6151f14e-8af0-11ee-9f00-80fa5ba2925a"));

insert into tb_modelo values (
	UUID_TO_BIN(UUID()), "Dgc St50", "250", 
    UUID_TO_BIN("74cb5a2c-8af0-11ee-9f00-80fa5ba2925a"),  
    UUID_TO_BIN("6151f14e-8af0-11ee-9f00-80fa5ba2925a"));

select *,BIN_TO_UUID(id) from tb_modelo;

select modelo as "Modelo", consumoNominal as "Consumo Nominal", tb_tipoequipamento.tipo, tb_fabricante.titulo from tb_modelo
inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id;

-- /////////////////////////////////////////////////////////////////INSERT EQUIPAMNETO///////////////////////////////////////

insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2021-08-25" , 
	UUID_TO_BIN("c383c2be-c292-c294-c28a-c3b111c3aec2"));

insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2022-08-30" , 
	UUID_TO_BIN("c383c38d-710e-c28a-c3b1-11c3aec29f00"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2021-08-25" , 
	UUID_TO_BIN("c383c3ac-c3ae-5fc2-8ac3-b111c3aec29f"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2021-08-25" , 
	UUID_TO_BIN("c384192a-c2a1-c28a-c3b1-11c3aec29f00"));
   
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c38430c3-85c3-bbc2-8ac3-b111c3aec29f"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c3843f2e-1ec2-8ac3-b111-c3aec29f00c2"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c2a6c382-270f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c38479c3-9939-c28a-c3b1-11c3aec29f00"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c39133c2-aa6f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c383c3ac-c3ae-5fc2-8ac3-b111c3aec29f"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c39133c2-aa6f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c38422c2-893d-c28a-c3b1-11c3aec29f00"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c39133c2-aa6f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c3843f2e-1ec2-8ac3-b111-c3aec29f00c2"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c39133c2-aa6f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c3846872-64c2-8ac3-b111-c3aec29f00c2"));
    
insert into tb_equipamento values (
	UUID_TO_BIN(UUID()),
    UUID_TO_BIN("c39133c2-aa6f-c28a-c3b4-11c3aec29f00") , 
    "2021-06-15" , 
	UUID_TO_BIN("c38479c3-9939-c28a-c3b1-11c3aec29f00"));
    
select *,BIN_TO_UUID(id) as "ID Equipamento" from tb_equipamento;

-- //// select todos equipamentos     
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
order by tb_equipamento.dataCompra desc ;


-- //// select equipamentos por unidade
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
inner join tb_unidade on tb_setor.id_unidade = tb_unidade.id
where tb_unidade.id = UUID_TO_BIN("2ec383c2-b2c3-82c2-8841-c382c28ac383")
order by tb_equipamento.dataCompra desc ;

select* , BIN_TO_UUID(id) from tb_unidade;

-- //// select equipamentos por tipo
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
where tb_tipoequipamento.tipo = "servidor"
order by tb_equipamento.dataCompra desc ;

-- //pesquisa por nome modelo
select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
where tb_modelo.modelo like "r7%"
order by tb_equipamento.dataCompra desc ;

-- /////////////////////////////////////////////////////////////////INSERT Modelo//////////////////////////////////////

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"750",
    "2023-11-01 11:59:48",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"748.03",
    "2023-11-01 23:59:45",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"749.57",
    "2023-11-02 11:59:50",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"750.07",
    "2023-11-02 23:59:00",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"780.17",
    "2023-11-03 11:59:13",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"778.43",
    "2023-11-03 23:59:07",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"772.33",
    "2023-11-04 11:59:37",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"702.08",
    "2023-11-04 23:59:37",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"772.33",
    "2023-11-05 11:59:37",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"702.08",
    "2023-11-05 23:59:37",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"750",
    "2023-11-06 11:59:48",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"748.03",
    "2023-11-06 23:59:45",
    uuid_to_bin("0c123070-8b1f-11ee-9f4a-b445067b7fe5")
);

-- //////////

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"180.05",
    "2023-11-01 11:59:48",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"174.01",
    "2023-11-01 23:59:48",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"169.41",
    "2023-11-02 11:59:18",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"163.35",
    "2023-11-02 23:59:55",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"192.22",
    "2023-11-03 11:59:08",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"190.04",
    "2023-11-03 23:59:18",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"180.56",
    "2023-11-04 11:59:09",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"192.22",
    "2023-11-04 23:59:08",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"169.41",
    "2023-11-05 11:59:18",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"167.32",
    "2023-11-05 23:59:18",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"170.05",
    "2023-11-06 11:59:18",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

insert into tb_consumo_equipamento values(
	UUID_TO_BIN(UUID()),
	"171.45",
    "2023-11-06 23:59:19",
    uuid_to_bin("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4")
);

select *,BIN_TO_UUID(id) as "ID Consumo" from tb_consumo_equipamento order by dataConsumo;


select consumo as "Consumo", dataConsumo as "Data", BIN_TO_UUID(idEquipamento) from tb_consumo_equipamento;

select consumo as "Consumo", dataConsumo as "Data" from tb_consumo_equipamento
where tb_consumo_equipamento.idEquipamento = UUID_TO_BIN("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4") order by dataConsumo;

select tb_modelo.modelo as "Modelo", BIN_TO_UUID(tb_consumo_equipamento.id) as "ID Consumo", tb_consumo_equipamento.dataConsumo as "Data" ,
BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento"
from tb_consumo_equipamento 
inner join tb_equipamento on tb_consumo_equipamento.idEquipamento = tb_equipamento.id
inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
where tb_consumo_equipamento.idEquipamento = UUID_TO_BIN("0c12c2ab-6ec2-8b1f-11c3-aec29f4ac2b4") order by dataConsumo;


