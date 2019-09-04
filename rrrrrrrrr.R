library(ggplot2)
library(tidyverse)
#Analisando Dados percebe-se medidas com muitas casas decimais, por isso o uso da função options(digits), buscando perder menosinformação possível
options(digits = 20)

#Leitura de Dados

DadosEscovacao <- read_excel("C:/Users/07708966930/Downloads/DadosEscovacao.xlsx")
DadosEscovacao
DadosEscovacao <- read_excel("C:/Users/07708966930/Downloads/DadosEscovacao.xlsx")
#Tratamento de Dados
DadosEscovacao$`Medidas de um índice de placa bacteriana obtidas de 26 crianças em idade pré-escolar, antes e depois do uso de uma escova experimental e de uma escova convencional. Fonte: Singer e Andrade(1997).`<- NULL
#Renomeando Colunas
colnames(DadosEscovacao)<- c("Numero da Observação","Sexo","Indice de Placa Escova Tradicional Antes", "Indice de Placa Escova Tradicional Depois", "Indice de Placa Escova Hugger Antes", "Indice de Placa Escova Hugger Depois")
#Eliminado Dados NA
DadosEscovacao1<- na.omit(DadosEscovacao)
DadosEscovacao1
view(DadosEscovacao1)
#Apartir daqui a Tabela util sera DadosEscovacao1 
#Estrutura de Dados
str(DadosEscovacao)
str(DadosEscovacao1)
view(DadosEscovacao1)
#Transformando Charc em Num e Factor
DadosEscovacao1$Sexo<-as.factor(DadosEscovacao1$Sexo)
DadosEscovacao1$`Indice de Placa Escova Tradicional Antes`<- as.numeric(DadosEscovacao1$`Indice de Placa Escova Tradicional Antes`)
DadosEscovacao1$`Indice de Placa Escova Tradicional Depois`<-as.numeric(DadosEscovacao1$`Indice de Placa Escova Tradicional Depois`)
DadosEscovacao1$`Indice de Placa Escova Hugger Antes`<-as.numeric(DadosEscovacao1$`Indice de Placa Escova Hugger Antes`)
DadosEscovacao1$`Indice de Placa Escova Hugger Depois`<-as.numeric(DadosEscovacao1$`Indice de Placa Escova Hugger Depois`)
str(DadosEscovacao1)
view(DadosEscovacao1)
DadosEscovacao1$<- DadosEscovacao1$`Indice de Placa Escova Tradicional Antes` - DadosEscovacao1$`Indice de Placa Escova Tradicional Depois`
#Criando NOva Coluna 
#Coluna DIferença Indice de Placa Escova Tradicional
DadosEscovacao1$`Diferença Indice de Placa Antes/Depois Escova Tradicional`<- DadosEscovacao1$`Indice de Placa Escova Tradicional Depois`- DadosEscovacao1$`Indice de Placa Escova Tradicional Antes`
#Coluna Diferença Indice de Placa Escova Hugger
DadosEscovacao1$`Diferença Indice de Placa Antes/Depois Escova Hugger`<- DadosEscovacao1$`Indice de Placa Escova Hugger Depois`- DadosEscovacao1$`Indice de Placa Escova Hugger Antes`
#Medidas de Dispersão e Localização 
summary(DadosEscovacao1$`Indice de Placa Escova Tradicional Antes`)
summary(DadosEscovacao1$`Indice de Placa Escova Tradicional Depois`)
summary(DadosEscovacao1$`Indice de Placa Escova Hugger Antes`)
summary(DadosEscovacao1$`Indice de Placa Escova Hugger Depois`)
summary(DadosEscovacao1$`Diferença Indice de Placa Antes/Depois Escova Tradicional`)
summary(DadosEscovacao1$`Diferença Indice de Placa Antes/Depois Escova Hugger`)

#Summarizando Média, media, desvio padrao e Variança

medias = DadosEscovacao1(id = c(1, 2, 3, 4),
                       var_char = c("A", "B", "C", "D"),
                       var_num = c(10, 20, 30, 40))
exemplo_1
                      