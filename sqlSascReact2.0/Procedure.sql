-- //////////////////////////// PESQUISA TODOS EQUIPAMENTOS /////////////////////////////

create procedure pesquisa_equipamentos ()
	select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	order by tb_equipamento.dataCompra desc ;
    
Call pesquisa_equipamentos;

-- //////////////////////////// PESQUISA TODOS EQUIPAMENTOS POR FABRICANTE /////////////////////////////

create procedure pesquisa_equipamentos_fabricante (var_fabricante varchar(20) )
	select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
    where tb_fabricante.titulo = var_fabricante
	order by tb_equipamento.dataCompra desc ;
    
call pesquisa_equipamentos_fabricante("LENOVO");

-- //////////////////////////// PESQUISA TODOS EQUIPAMENTOS POR UNIDADE /////////////////////////////

select* , BIN_TO_UUID(id) from tb_unidade;

create procedure pesquisa_equipamentos_unidade (var_id_unidade varchar(30) )
	select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	inner join tb_unidade on tb_setor.id_unidade = tb_unidade.id
	where tb_unidade.id = var_id_unidade
	order by tb_equipamento.dataCompra desc ;

call pesquisa_equipamentos_unidade(UUID_TO_BIN("0c112cc3-a8c2-8b1f-11c3-aec29f4ac2b4"));

-- ///////////////////////////////// PESQUISA TODOS EQUIPAMENTOS POR TIPO /////////////////////////////

create procedure pesquisa_equipamentos_tipo (var_tipo_equipamento varchar(20))
	select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	where tb_tipoequipamento.tipo = var_tipo_equipamento
	order by tb_equipamento.dataCompra desc ;
    
call pesquisa_equipamentos_tipo("servidor");

-- ///////////////////////////////// PESQUISA TODOS EQUIPAMENTOS POR MODELO /////////////////////////////

create procedure pesquisa_equipamento_modelo (var_modelo varchar(30))
	select BIN_TO_UUID(tb_equipamento.id) as "ID Equipamento", tb_modelo.modelo as "Modelo" , tb_fabricante.titulo as "Fabricante" , 
	tb_tipoequipamento.tipo as "Tipo", tb_modelo.consumoNominal as "Consumo Nominal", 
	tb_equipamento.dataCompra as "Data de Compra" , tb_setor.titulo "Setor" from tb_equipamento
	inner join tb_modelo on tb_equipamento.id_modelo = tb_modelo.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_fabricante on tb_modelo.id_fabricante = tb_fabricante.id
	inner join tb_tipoequipamento on tb_modelo.id_tipoequipamento = tb_tipoequipamento.id
	where tb_modelo.modelo like var_modelo
	order by tb_equipamento.dataCompra desc ;

use bd_sasc_react;
    
call pesquisa_equipamento_modelo("D%");
-- /// A Porcentagem {%} ajuda a não excluir itens por nao digitar nome completo 


-- //////////////////////////// PESQUISA EQUIPAMENTO POR ID /////////////////////////////

create procedure pesquisa_consumo_invidual (var_id_equipamento varchar(30)) 
	select consumo as "Consumo", dataConsumo as "Data" from tb_consumo_equipamento
	where tb_consumo_equipamento.idEquipamento = var_id_equipamento order by dataConsumo;    

call pesquisa_consumo_invidual(UUID_TO_BIN("0c123070-c28b-1f11-c3ae-c29f4ac2b445"));
