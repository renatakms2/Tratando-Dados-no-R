library(dplyr)
library(tidyverse)
library(tidyr)
library(tibble)
#devtools::install_github("abjur/abjData")
library(abjData) #para usar o pnud_min


## dados -------------------------------------
dados = pnud_min


## Salvando dados gerados --------------------
caminho = "nome.txt"
write.table(dados, file = caminho, na = "", sep = "\t", 
            row.names = FALSE, quote = FALSE)


## Amostra dos dados ------------------------
#amostra de 10%
dados_amostra = dados %>% sample_frac(0.1)


## Obs repetidas --------------------------

dados = dados %>% distinct(ano,.keep_all = T) 


## left join --------------------------------
# BASE1 DA ESQUERDA VAI RECEBER DA BASE2

dadosjoin <- left_join(base1, base2 %>% 
                         select(CPF, DATA_NASC), by = c("CPF"))


## Selecionando variaveis -------------------

dados %>%  select(ano, regiao, muni)

# É possível utilizar nomes, índices, intervalos de variáveis 
# ou utilizar as funções starts_with(x), contains(x), 
# matches(x), one_of(x) para selecionar as variáveis.

dados %>% select(ano:regiao, rdpc)

dados %>% select(ano, starts_with('idhm'))


## filter (parecida com subset)--------------

dados %>% 
  select(ano, muni, uf) %>% 
  filter(uf == 'AC')


dados %>% 
  select(ano, regiao, uf, idhm) %>% 
  filter(uf %in% c('SP', 'MG') | idhm > .5, ano == 2010)




