-- ---------------------------------- --
-- SCRIPT PARA KDD: BASE DE COGUMELOS --
-- ---------------------------------- --

-- 1. Criação da tabela de cogumelos. 
CREATE TABLE public.mushroom (
    class                    VARCHAR (50),  -- e=edible, p=poisonous      (IMPORTANT)
    formato_chapeu           VARCHAR (50),  -- b,c,x,f,k,s
    textura_chapeu           VARCHAR (50),  -- f,g,y,s
    cor_chapeu               VARCHAR (50),  -- n,b,c,g,r,p,u,e,w,y
    manchas                  VARCHAR (50),  -- t,f                        (IMPORTANT)
    odor                     VARCHAR (50),  -- a,l,c,y,f,m,n,p,s          (IMPORTANT)
    ligacao_lamelas          VARCHAR (50),  -- a,d,f,n
    espacamento_lamelas      VARCHAR (50),  -- c,w,d
    tamanho_lamelas          VARCHAR (50),  -- b,n                        (IMPORTANT)
    cor_lamelas              VARCHAR (50),  -- k,n,b,h,g,r,o,p,u,e,w,y    (IMPORTANT)
    formato_caule            VARCHAR (50),  -- e,t
    formato_raiz_caule       VARCHAR (50),  -- b,c,u,e,z,r,?
    textura_caule_acima      VARCHAR (50),  -- f,y,k,s                    (IMPORTANT)
    textura_caule_abaixo     VARCHAR (50),  -- f,y,k,s
    cor_caule_acima          VARCHAR (50),  -- n,b,c,g,o,p,e,w,y
    cor_caule_abaixo         VARCHAR (50),  -- n,b,c,g,o,p,e,w,y
    tipo_veu                 VARCHAR (50),  -- p,u
    cor_veu                  VARCHAR (50),  -- n,o,w,y
    quantidade_anel          VARCHAR (50),  -- n,o,t
    tipo_anel                VARCHAR (50),  -- c,e,f,l,n,p,s,z            (IMPORTANT)
    cor_impressao_esporos    VARCHAR (50),  -- k,n,b,h,r,o,u,w,y          (IMPORTANT)
    populacao                VARCHAR (50),  -- a,c,n,s,v,y                (IMPORTANT)
    habitat                  VARCHAR (50)   -- g,l,m,p,u,w,d              (IMPORTANT)
);

 /*
 2. Para inserir os dados:
 
 	2.1 Baixar o arquivo csv com os registros;
	2.2 Clicar com o botão direito na tabela criada no passo 1 e selecionar a opção "Import/Export Data...";
	2.3 Selecionar o arquivo "agaricus-lepiota";
	2.4 Selecionar o formato "CSV";
	2.5 Clicar em "ok".
 */

-- 3. Verificar se a tabela foi criada e se os dados já estão inseridos.
SELECT * FROM public.mushroom;


-- 4. Deleta as colunas que não serão usadas para o trabalho.
ALTER TABLE public.mushroom
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

-- 5. Verificar se as colunas foram excluidas.
SELECT * FROM public.mushroom LIMIT 1;

-- 6. trocar os nomes nos registros para melhor entendimento

-- Coluna 'class' --
UPDATE public.mushroom
SET class = 'comestível'
WHERE class = 'e';

UPDATE public.mushroom
SET class = 'venenoso'
WHERE class = 'p';

-- Coluna 'manchas' --
UPDATE public.mushroom
SET manchas = 'sim'
WHERE manchas = 't';

UPDATE public.mushroom
SET manchas = 'não'
WHERE manchas = 'f';

UPDATE public.mushroom
SET odor = 'amendoa'
WHERE odor = 'a';

UPDATE public.mushroom
SET odor = 'anis'
WHERE odor = 'l';

UPDATE public.mushroom
SET odor = 'creosoto'
WHERE odor = 'c';

UPDATE public.mushroom
SET odor = 'peixe'
WHERE odor = 'y';

UPDATE public.mushroom
SET odor = 'podre'
WHERE odor = 'f';

UPDATE public.mushroom
SET odor = 'mofo'
WHERE odor = 'm';

UPDATE public.mushroom
SET odor = 'nenhum'
WHERE odor = 'n';

UPDATE public.mushroom
SET odor = 'pungente'
WHERE odor = 'p';

UPDATE public.mushroom
SET odor = 'apimentado'
WHERE odor = 's';

-- Coluna 'tamanho_lamelas' --
UPDATE public.mushroom
SET tamanho_lamelas = 'largo'
WHERE tamanho_lamelas = 'b';

UPDATE public.mushroom
SET tamanho_lamelas = 'estreito'
WHERE tamanho_lamelas = 'n';

-- Coluna 'cor_lamelas' --
UPDATE public.mushroom
SET cor_lamelas = 'preto'
WHERE cor_lamelas = 'k';

UPDATE public.mushroom
SET cor_lamelas = 'marrom'
WHERE cor_lamelas = 'n';

UPDATE public.mushroom
SET cor_lamelas = 'bege'
WHERE cor_lamelas = 'b';

UPDATE public.mushroom
SET cor_lamelas = 'chocolate'
WHERE cor_lamelas = 'h';

UPDATE public.mushroom
SET cor_lamelas = 'cinza'
WHERE cor_lamelas = 'g';

UPDATE public.mushroom
SET cor_lamelas = 'verde'
WHERE cor_lamelas = 'r';

UPDATE public.mushroom
SET cor_lamelas = 'laranja'
WHERE cor_lamelas = 'o';

UPDATE public.mushroom
SET cor_lamelas = 'rosa'
WHERE cor_lamelas = 'p';

UPDATE public.mushroom
SET cor_lamelas = 'roxo'
WHERE cor_lamelas = 'u';

UPDATE public.mushroom
SET cor_lamelas = 'vermelho'
WHERE cor_lamelas = 'e';

UPDATE public.mushroom
SET cor_lamelas = 'branco'
WHERE cor_lamelas = 'w';

UPDATE public.mushroom
SET cor_lamelas = 'amarelo'
WHERE cor_lamelas = 'y';

-- Coluna 'textura_caule_acima' --

UPDATE public.mushroom
SET textura_caule_acima = 'fibroso'
WHERE textura_caule_acima = 'f';


UPDATE public.mushroom
SET textura_caule_acima = 'escamoso'
WHERE textura_caule_acima = 'y';

UPDATE public.mushroom
SET textura_caule_acima = 'sedoso'
WHERE textura_caule_acima = 'k';

UPDATE public.mushroom
SET textura_caule_acima = 'liso'
WHERE textura_caule_acima = 's';

-- Coluna 'tipo_anel' --

UPDATE public.mushroom
SET tipo_anel = 'cobalto'
WHERE tipo_anel = 'c';

UPDATE public.mushroom
SET tipo_anel = 'evanescente'
WHERE tipo_anel = 'e';

UPDATE public.mushroom
SET tipo_anel = 'alagardo'
WHERE tipo_anel = 'f';

UPDATE public.mushroom
SET tipo_anel = 'grande'
WHERE tipo_anel = 'l';

UPDATE public.mushroom
SET tipo_anel = 'nenhum'
WHERE tipo_anel = 'n';

UPDATE public.mushroom
SET tipo_anel = 'pendente'
WHERE tipo_anel = 'p';

UPDATE public.mushroom
SET tipo_anel = 'bainha'
WHERE tipo_anel = 's';

UPDATE public.mushroom
SET tipo_anel = 'zona'
WHERE tipo_anel =  'z';

-- Coluna 'cor_impressao_esporos' --

UPDATE public.mushroom
SET cor_impressao_esporos = 'preto'
WHERE cor_impressao_esporos = 'k';

UPDATE public.mushroom
SET cor_impressao_esporos = 'marrom'
WHERE cor_impressao_esporos = 'n';

UPDATE public.mushroom
SET cor_impressao_esporos = 'bege'
WHERE cor_impressao_esporos = 'b';

UPDATE public.mushroom
SET cor_impressao_esporos = 'chocolate'
WHERE cor_impressao_esporos = 'h';

UPDATE public.mushroom
SET cor_impressao_esporos = 'verde'
WHERE cor_impressao_esporos = 'r';

UPDATE public.mushroom
SET cor_impressao_esporos = 'laranja'
WHERE cor_impressao_esporos = 'o';

UPDATE public.mushroom
SET cor_impressao_esporos = 'roxo'
WHERE cor_impressao_esporos = 'u';

UPDATE public.mushroom
SET cor_impressao_esporos = 'branco'
WHERE cor_impressao_esporos = 'w';

UPDATE public.mushroom
SET cor_impressao_esporos = 'amarelo'
WHERE cor_impressao_esporos = 'y';

-- Coluna 'populacao' --

UPDATE public.mushroom
SET populacao = 'abundante'
WHERE populacao = 'a';

UPDATE public.mushroom
SET populacao = 'agrupado'
WHERE populacao = 'c';

UPDATE public.mushroom
SET populacao = 'numeroso'
WHERE populacao = 'n';

UPDATE public.mushroom
SET populacao = 'disperso'
WHERE populacao = 's';

UPDATE public.mushroom
SET populacao = 'varios'
WHERE populacao = 'v';

UPDATE public.mushroom
SET populacao = 'solitario'
WHERE populacao = 'y';

-- Coluna 'habitat' --

UPDATE public.mushroom
SET habitat = 'gramado'
WHERE habitat = 'g';

UPDATE public.mushroom
SET habitat = 'folhas'
WHERE habitat = 'l';

UPDATE public.mushroom
SET habitat = 'prado'
WHERE habitat = 'm';

UPDATE public.mushroom
SET habitat = 'caminho'
WHERE habitat = 'p';

UPDATE public.mushroom
SET habitat = 'urbano'
WHERE habitat = 'u';

UPDATE public.mushroom
SET habitat = 'baldio'
WHERE habitat = 'w';

UPDATE public.mushroom
SET habitat = 'floresta'
WHERE habitat = 'd';













