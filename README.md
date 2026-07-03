# 🍄 Mushroom Database

Script em SQL para preparação da base de dados **Agaricus-lepiota** do UCI Machine Learning Repository, adaptada em língua portuguesa para uso em projetos de **Knowledge Discovery in Databases (KDD)**.

---

## 📝 Sobre o Projeto

Este repositório contém um script em SQL que cria e prepara uma base de dados de cogumelos (disponível em: https://archive.ics.uci.edu/dataset/73/mushroom) para a extração de regras de associação. Os dados originalmente são compostos por **23 atributos (colunas)** e **8.124 registros (linhas)**, onde cada coluna representa uma característica morfológica dos cogumelos e cada registro representa uma espécie.

Os dados originais utilizam uma codificação baseada em letras únicas para representar os atributos dos cogumelos. Este script traduz essas abreviações para termos legíveis em português, facilitando a compreensão da base de dados e a interpretação das regras de associação geradas durante o processo de KDD.

---

## 🎲 Fonte dos Dados

| Campo | Informação |
|---|---|
| Base de dados original | https://archive.ics.uci.edu/dataset/73/mushroom |
| Arquivo com os dados | `agaricus-lepiota.data` |
| Total de colunas | 23 características |
| Total de registros | 8.124 cogumelos |

---

## 💻 Pré-requisitos

1. PostgreSQL 13 ou superior com o pgAdmin4
2. Schema `kdd` criado previamente no banco de dados
3. Arquivo `agaricus-lepiota.data` baixado da base de dados original

---

## ✍️ Como Usar

Execute o arquivo `script-cogumelos.sql` seguindo a ordem dos passos abaixo:

**1. Criar a tabela**

```sql
CREATE TABLE kdd.mushroom ( ... );
```

**2. Importar o CSV**

No pgAdmin, clique com o botão direito na tabela criada → `Import/Export Data...` → selecione o arquivo `agaricus-lepiota` no formato `CSV` → clique em OK.

**3. Adicionar a coluna de ID**

```sql
ALTER TABLE kdd.mushroom
ADD COLUMN id_cogumelo SMALLINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY;
```

**4. Remover colunas não utilizadas**

O script elimina 13 colunas irrelevantes para o processo de KDD.

**5. Traduzir os valores**

Todos os valores abreviados são substituídos por termos em português para melhor legibilidade.

**6. Verificar**

```sql
SELECT * FROM kdd.mushroom;
```

---

## 🏡 Estrutura da Tabela

Colunas mantidas após a limpeza (com os valores já traduzidos):

| Coluna | Descrição | Valores possíveis |
|---|---|---|
| `classe_cogumelo` | Classificação do cogumelo | `comestível`, `venenoso` |
| `manchas` | Presença de manchas | `sim`, `não` |
| `odor` | Cheiro do cogumelo | `amêndoa`, `anis`, `creosoto`, `peixe`, `podre`, `mofo`, `nenhum`, `pungente`, `apimentado` |
| `tamanho_lamelas` | Tamanho das lamelas | `largo`, `estreito` |
| `cor_lamelas` | Cor das lamelas | `preto`, `marrom`, `bege`, `chocolate`, `cinza`, `verde`, `laranja`, `rosa`, `roxo`, `vermelho`, `branco`, `amarelo` |
| `textura_caule_acima` | Textura do caule acima do anel | `fibroso`, `escamoso`, `sedoso`, `liso` |
| `tipo_anel` | Tipo de anel do cogumelo | `cobalto`, `evanescente`, `alargado`, `grande`, `nenhum`, `pendente`, `bainha`, `zona` |
| `cor_impressao_esporos` | Cor da impressão de esporos | `preto`, `marrom`, `bege`, `chocolate`, `verde`, `laranja`, `roxo`, `branco`, `amarelo` |
| `populacao` | Forma de distribuição na natureza | `abundante`, `agrupado`, `numeroso`, `disperso`, `vários`, `solitário` |
| `habitat` | Habitat onde o cogumelo foi encontrado | `gramado`, `folhas`, `prado`, `caminho`, `urbano`, `baldio`, `floresta` |

---

## 📁 Estrutura do Repositório

```
mushroom-database/
│
└── script-cogumelos.sql   # Script principal de criação, carga e transformação
```

---

## 📎 Referência

Schlimmer, J. (1987). *Mushroom*. UCI Machine Learning Repository.
https://archive.ics.uci.edu/dataset/73/mushroom


