use bd_sasc;

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

select *,BIN_TO_UUID(id) as "ID Unidade" from tb_endereco;

-- ////////////////////////////////////////////////////////////////// INSERT UNIDADE ////////////////////////////////////////////////
select *, bin_to_uuid(id) as 'id endereço' from tb_endereco;

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade Anchieta - São Bernardo do Campo",
	UUID_TO_BIN("1f4bddd4-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade São Carlos",
	UUID_TO_BIN("36da621d-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade Taubaté",
	UUID_TO_BIN("38e6f4b8-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_unidade VALUES (
	UUID_TO_BIN(UUID()),
	"Unidade São José dos Pinhais",
	UUID_TO_BIN("3806c408-88cf-11ee-9f4a-b445067b7fe5")
);

select *,BIN_TO_UUID(id) as "ID Unidade", BIN_TO_UUID(id_endereco) as "ID Endereço" from tb_unidade;

-- /////////////////////////////////////////////////////////// INSERT SETORES //////////////////////////////////////////////////////////////

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SBC - 03/20",
	UUID_TO_BIN("5d95adde-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SBC - 04/21",
	UUID_TO_BIN("5d95adde-88cf-11ee-9f4a-b445067b7fe5")	
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SBC - 05/22",
	UUID_TO_BIN("5d95adde-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SC - 17/02",
	UUID_TO_BIN("60333895-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
	"SC - 18/03",
	UUID_TO_BIN("60333895-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SC - 19/04",
	UUID_TO_BIN("60333895-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "T - 07/14",
	UUID_TO_BIN("6287de32-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "T - 08/15",
	UUID_TO_BIN("6287de32-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "T - 09/16",
	UUID_TO_BIN("6287de32-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SJP - 10/01",
	UUID_TO_BIN("65115235-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SJP - 11/09",
	UUID_TO_BIN("65115235-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_setor VALUES (
	UUID_TO_BIN(UUID()),
    "SJP - 12/13",
	UUID_TO_BIN("65115235-88cf-11ee-9f4a-b445067b7fe5")
);

select *,BIN_TO_UUID(id) as "ID Setor", BIN_TO_UUID(id_unidade) as "ID Unidade" from tb_setor;

-- ////////////////////////////////////////////////////////// INSERT USUARIOS /////////////////////////////////////////////////////


select *,BIN_TO_UUID(id) as "ID usuario" from tb_tipofuncionario;

select *,BIN_TO_UUID(id) as "ID usuario" from tb_funcionario;

select tb_funcionario.nome as "ID usuario", tb_funcionario.email as "Email", tb_tipofuncionario.categoria as "Categoria" 
from tb_funcionario
Inner join tb_tipofuncionario on tb_funcionario.id_tipofuncionario = tb_tipofuncionario.id;

select tb_funcionario.nome as "ID usuario", tb_funcionario.email as "Email", tb_tipofuncionario.categoria as "Categoria" , tb_setor.titulo as "Setor"
from tb_funcionario
Inner join tb_tipofuncionario on tb_funcionario.id_tipofuncionario = tb_tipofuncionario.id
inner join tb_setor on tb_funcionario.id_setor = tb_setor.id
order by tb_funcionario.nome ;

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Gabriela Ramos",
	"gabi@email.com",
	"chihuahua",
    UUID_TO_BIN("b7215008-88cf-11ee-9f4a-b445067b7fe5"),
	UUID_TO_BIN("19a1ea1d-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Gabriel Trindade",
	"gabriel@email.com",
	"marlborodemelancia",
	UUID_TO_BIN("bdfd9c4f-88cf-11ee-9f4a-b445067b7fe5"),
    UUID_TO_BIN("19a1ea1d-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Felipe Fonseca",
	"felipe@email.com",
	"poddebanana",	
    UUID_TO_BIN("c4595f4e-88cf-11ee-9f4a-b445067b7fe5"),
	UUID_TO_BIN("19a1ea1d-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Denis Santana",
	"denis@email.com",
	"bolodeprestigio",
	UUID_TO_BIN("c9dc5836-88cf-11ee-9f4a-b445067b7fe5"),
	UUID_TO_BIN("19a1ea1d-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Janaina Mota",
	"jana@email.com",
	"janaamaofelipe",
	UUID_TO_BIN("b9b09da5-88cf-11ee-9f4a-b445067b7fe5"),
    UUID_TO_BIN("19a1f0d4-88cf-11ee-9f4a-b445067b7fe5")
);

INSERT INTO tb_funcionario VALUES (
	UUID_TO_BIN(UUID()),
	"Liandra Morais",
	"lili@email.com",
	"serramaltegeladinha",
	UUID_TO_BIN("c0d0cf84-88cf-11ee-9f4a-b445067b7fe5"),
	UUID_TO_BIN("19a1f0d4-88cf-11ee-9f4a-b445067b7fe5")
);


-- /////////////////////////////////////////////////////////////////INSERT EQUIPAMNETO///////////////////////////////////////
insert into tb_equipamento values (UUID_TO_BIN(UUID()), "R750 Xeon 6330", "45121.00", "14000", "2021-08-25" , UUID_TO_BIN("b7215008-88cf-11ee-9f4a-b445067b7fe5") , UUID_TO_BIN("12df4a5d-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5"));

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "R750 Xeon 6330", "45121.00", "14000", "2022-08-30" , UUID_TO_BIN("bdfd9c4f-88cf-11ee-9f4a-b445067b7fe5") , UUID_TO_BIN("12df4a5d-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5"));

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "R750 Xeon 6330", "45121.00", "14000", "2021-08-25" , UUID_TO_BIN("c4595f4e-88cf-11ee-9f4a-b445067b7fe5") , UUID_TO_BIN("12df4a5d-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5"));

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "R750 Xeon 6330", "45121.00", "14000", "2023-04-05" , UUID_TO_BIN("c9dc5836-88cf-11ee-9f4a-b445067b7fe5") , UUID_TO_BIN("12df4a5d-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5"));


insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50", "5646.51", "250", "2023-03-08", UUID_TO_BIN("b9b09da5-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2023-03-08", UUID_TO_BIN("bbee1c0b-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2023-03-08", UUID_TO_BIN("c0d0cf84-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2022-07-10", UUID_TO_BIN("c2a8b2ea-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2022-07-10", UUID_TO_BIN("c687b318-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2022-07-10", UUID_TO_BIN("c82abd84-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values (UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2022-07-10", UUID_TO_BIN("cbd48dd3-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

insert into tb_equipamento values(UUID_TO_BIN(UUID()), "Dgc St50 ", "5646.51", "250", "2022-07-10", UUID_TO_BIN("cd7fea8c-88cf-11ee-9f4a-b445067b7fe5"),  UUID_TO_BIN("154b6679-88cf-11ee-9f4a-b445067b7fe5"), UUID_TO_BIN("f639659e-88ce-11ee-9f4a-b445067b7fe5") );

select * from tb_equipamento;

