-- 1. Criação da tabela de cogumelos(! -> colunas que serão utilizadas para o processo de kdd). 
 CREATE TABLE kdd.mushroom (
    classe_cogumelo          VARCHAR (50),  -- !
    formato_chapeu           VARCHAR (50),  
    textura_chapeu           VARCHAR (50),  
    cor_chapeu               VARCHAR (50),  
    manchas                  VARCHAR (50),  -- !
    odor                     VARCHAR (50),  -- !
    ligacao_lamelas          VARCHAR (50),  
    espacamento_lamelas      VARCHAR (50), 
    tamanho_lamelas          VARCHAR (50),  -- !
    cor_lamelas              VARCHAR (50),  -- !
    formato_caule            VARCHAR (50),  
    formato_raiz_caule       VARCHAR (50), 
    textura_caule_acima      VARCHAR (50),  -- !
    textura_caule_abaixo     VARCHAR (50),  
    cor_caule_acima          VARCHAR (50), 
    cor_caule_abaixo         VARCHAR (50),  
    tipo_veu                 VARCHAR (50),  
    cor_veu                  VARCHAR (50),  
    quantidade_anel          VARCHAR (50), 
    tipo_anel                VARCHAR (50),  -- !
    cor_impressao_esporos    VARCHAR (50),  -- !
    populacao                VARCHAR (50),  -- !
    habitat                  VARCHAR (50)   -- !
);

 /*
 2. Para inserir os dados:
 
 	2.1 Baixar o arquivo zip da base de dados (disponivel em: https://archive.ics.uci.edu/dataset/73/mushroom);
	2.2 Extrair o arquivo zip baixado;
	2.3 Clicar com o botão direito na tabela criada no passo 1 e selecionar a opção "Import/Export Data...";
	2.4 Selecionar o arquivo "agaricus-lepiota";
	2.5 Selecionar o formato "CSV";
	2.6 Clicar em "ok".
 */

 -- 3. Adicionar uma coluna de id para os registros
 ALTER TABLE kdd.mushroom
 ADD COLUMN id_cogumelo SMALLINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY; -- os id's serão preenchidos automaticamente.

 -- 4. Deleta as colunas que não serão usadas para o trabalho.
 ALTER TABLE kdd.mushroom
 DROP COLUMN formato_chapeu,
 DROP COLUMN textura_chapeu,
 DROP COLUMN cor_chapeu,
 DROP COLUMN ligacao_lamelas,
 DROP COLUMN espacamento_lamelas,
 DROP COLUMN formato_caule,
 DROP COLUMN formato_raiz_caule,
 DROP COLUMN textura_caule_abaixo,
 DROP COLUMN cor_caule_acima,
 DROP COLUMN cor_caule_abaixo,
 DROP COLUMN tipo_veu,
 DROP COLUMN cor_veu,
 DROP COLUMN quantidade_anel;

 -- 5. trocar os nomes nos registros para melhor entendimento.
 -- Coluna 'classe_cogumelo' --
 UPDATE kdd.mushroom
 SET classe_cogumelo = 'comestível'
 WHERE classe_cogumelo = 'e';

 UPDATE kdd.mushroom
 SET classe_cogumelo = 'venenoso'
 WHERE classe_cogumelo = 'p';

 -- Coluna 'manchas' --
 UPDATE kdd.mushroom
 SET manchas = 'sim'
 WHERE manchas = 't';

 UPDATE kdd.mushroom
 SET manchas = 'não'
 WHERE manchas = 'f';

 UPDATE kdd.mushroom
 SET odor = 'amendoa'
 WHERE odor = 'a';

 UPDATE kdd.mushroom
 SET odor = 'anis'
 WHERE odor = 'l';

 UPDATE kdd.mushroom
 SET odor = 'creosoto'
 WHERE odor = 'c';

 UPDATE kdd.mushroom
 SET odor = 'peixe'
 WHERE odor = 'y';

 UPDATE kdd.mushroom
 SET odor = 'podre'
 WHERE odor = 'f';

 UPDATE kdd.mushroom
 SET odor = 'mofo'
 WHERE odor = 'm';

 UPDATE kdd.mushroom
 SET odor = 'nenhum'
 WHERE odor = 'n';

 UPDATE kdd.mushroom
 SET odor = 'pungente'
 WHERE odor = 'p';

 UPDATE kdd.mushroom
 SET odor = 'apimentado'
 WHERE odor = 's';

 -- Coluna 'tamanho_lamelas' --
 UPDATE kdd.mushroom
 SET tamanho_lamelas = 'largo'
 WHERE tamanho_lamelas = 'b';

 UPDATE kdd.mushroom
 SET tamanho_lamelas = 'estreito'
 WHERE tamanho_lamelas = 'n';

 -- Coluna 'cor_lamelas' --
 UPDATE kdd.mushroom
 SET cor_lamelas = 'preto'
 WHERE cor_lamelas = 'k';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'marrom'
 WHERE cor_lamelas = 'n';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'bege'
 WHERE cor_lamelas = 'b';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'chocolate'
 WHERE cor_lamelas = 'h';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'cinza'
 WHERE cor_lamelas = 'g';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'verde'
 WHERE cor_lamelas = 'r';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'laranja'
 WHERE cor_lamelas = 'o';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'rosa'
 WHERE cor_lamelas = 'p';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'roxo'
 WHERE cor_lamelas = 'u';
 
 UPDATE kdd.mushroom
 SET cor_lamelas = 'vermelho'
 WHERE cor_lamelas = 'e';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'branco'
 WHERE cor_lamelas = 'w';

 UPDATE kdd.mushroom
 SET cor_lamelas = 'amarelo'
 WHERE cor_lamelas = 'y';

 -- Coluna 'textura_caule_acima' --

 UPDATE kdd.mushroom
 SET textura_caule_acima = 'fibroso'
 WHERE textura_caule_acima = 'f';


 UPDATE kdd.mushroom
 SET textura_caule_acima = 'escamoso'
 WHERE textura_caule_acima = 'y';

 UPDATE kdd.mushroom
 SET textura_caule_acima = 'sedoso'
 WHERE textura_caule_acima = 'k';

 UPDATE kdd.mushroom
 SET textura_caule_acima = 'liso'
 WHERE textura_caule_acima = 's';

 -- Coluna 'tipo_anel' --

 UPDATE kdd.mushroom
 SET tipo_anel = 'cobalto'
 WHERE tipo_anel = 'c';

 UPDATE kdd.mushroom
 SET tipo_anel = 'evanescente'
 WHERE tipo_anel = 'e';

 UPDATE kdd.mushroom
 SET tipo_anel = 'alagardo'
 WHERE tipo_anel = 'f';

 UPDATE kdd.mushroom
 SET tipo_anel = 'grande'
 WHERE tipo_anel = 'l';

 UPDATE kdd.mushroom
 SET tipo_anel = 'nenhum'
 WHERE tipo_anel = 'n';

 UPDATE kdd.mushroom
 SET tipo_anel = 'pendente'
 WHERE tipo_anel = 'p';

 UPDATE kdd.mushroom
 SET tipo_anel = 'bainha'
 WHERE tipo_anel = 's';

 UPDATE kdd.mushroom
 SET tipo_anel = 'zona'
 WHERE tipo_anel =  'z';

 -- Coluna 'cor_impressao_esporos' --

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'preto'
 WHERE cor_impressao_esporos = 'k';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'marrom'
 WHERE cor_impressao_esporos = 'n';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'bege'
 WHERE cor_impressao_esporos = 'b';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'chocolate'
 WHERE cor_impressao_esporos = 'h';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'verde'
 WHERE cor_impressao_esporos = 'r';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'laranja'
 WHERE cor_impressao_esporos = 'o';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'roxo'
 WHERE cor_impressao_esporos = 'u';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'branco'
 WHERE cor_impressao_esporos = 'w';

 UPDATE kdd.mushroom
 SET cor_impressao_esporos = 'amarelo'
 WHERE cor_impressao_esporos = 'y';

 -- Coluna 'populacao' --

 UPDATE kdd.mushroom
 SET populacao = 'abundante'
 WHERE populacao = 'a';

 UPDATE kdd.mushroom
 SET populacao = 'agrupado'
 WHERE populacao = 'c';

 UPDATE kdd.mushroom
 SET populacao = 'numeroso'
 WHERE populacao = 'n';

 UPDATE kdd.mushroom
 SET populacao = 'disperso'
 WHERE populacao = 's';

 UPDATE kdd.mushroom
 SET populacao = 'varios'
 WHERE populacao = 'v';

 UPDATE kdd.mushroom
 SET populacao = 'solitario'
 WHERE populacao = 'y';

 -- Coluna 'habitat' --

 UPDATE kdd.mushroom
 SET habitat = 'gramado'
 WHERE habitat = 'g';

 UPDATE kdd.mushroom
 SET habitat = 'folhas'
 WHERE habitat = 'l';

 UPDATE kdd.mushroom
 SET habitat = 'prado'
 WHERE habitat = 'm';

 UPDATE kdd.mushroom
 SET habitat = 'caminho'
 WHERE habitat = 'p';

 UPDATE kdd.mushroom
 SET habitat = 'urbano'
 WHERE habitat = 'u';

 UPDATE kdd.mushroom
 SET habitat = 'baldio'
 WHERE habitat = 'w';

 UPDATE kdd.mushroom
 SET habitat = 'floresta'
 WHERE habitat = 'd';

 --6. Confirmar que todas as mudanças foram feitas.
 SELECT * FROM kdd.mushroom
 ORDER BY id_cogumelo;

 -- fim do script.

 


