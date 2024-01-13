use bd_sasc;

CREATE PROCEDURE linha_tempo_equipamento_entre_datas (varId varchar(30), varData1 varchar(10), varData2 Varchar(10))  
	select tb_consumo_equipamento.consumo as "Consumo" , tb_consumo_equipamento.dataConsumo as "Data" 
	from tb_consumo_equipamento where tb_consumo_equipamento.idEquipamento = varId and
    tb_consumo_equipamento.dataConsumo between varData1 and varData2;
    
CALL linha_tempo_equipamento_entre_datas (UUID_TO_BIN("47c28ac2-8f62-c288-c391-11c3aec29f4a"), "2023-11-02" , "2023-11-04");
-- Primeiro criteiro: ID do equipamento / Segundo criterio: data incial / Terceiro criterio: data final

   
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////


CREATE PROCEDURE linha_tempo_equipamento (varId varchar(30))
select tb_consumo_equipamento.consumo as "Consumo" , tb_consumo_equipamento.dataConsumo as "Data" 
from tb_consumo_equipamento where tb_consumo_equipamento.idEquipamento = varId
order by tb_consumo_equipamento.dataConsumo;

CALL linha_tempo_equipamento(UUID_TO_BIN("47c28ac2-8f62-c288-c391-11c3aec29f4a"));
-- Criterio: Id do equipamento a ser pesqisado


-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////


create procedure pesquisa_completa_equipamento_por_fabricante (varTitulo varchar(30))
	select tb_equipamento.modelo as "Equipamento", tb_tipoequipamento.tipo as "Tipo",
	tb_fabricante.titulo as "Fabricante", tb_equipamento.consumoNominal as "Consumo nominal",
    tb_setor.titulo as "Setor" , tb_unidade.nome as "Unidade" from tb_equipamento
	inner join tb_tipoequipamento on tb_equipamento.id_tipoequipamento = tb_tipoequipamento.id
	inner join tb_setor on tb_equipamento.id_setor = tb_setor.id
	inner join tb_unidade on tb_setor.id_unidade = tb_unidade.id
	inner join tb_fabricante on tb_equipamento.id_fabricante = tb_fabricante.id
	where tb_fabricante.titulo = varTitulo  ;
    
CALL pesquisa_completa_equipamento_por_fabricante('DELL');
-- Criterio: nome do fabricante pesquisado

-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////

