library(ggplot2)
library(tidyverse)
library(readxl)
#leitura de Dados
DadosEscovacao <- read_excel("C:/Users/07708966930/Downloads/DadosEscovacao.xlsx")
#Tratamento de Dados
DadosEscovacao$`Medidas de um índice de placa bacteriana obtidas de 26 crianças em idade pré-escolar, antes e depois do uso de uma escova experimental e de uma escova convencional. Fonte: Singer e Andrade(1997).`<- NULL
#Renomeando Colunas
colnames(DadosEscovacao)<- c("Numero da Observação","Sexo","Indice de Placa Escova Tradicional Antes", "Indice de Placa Escova Tradicional Depois", "Indice de Placa Escova Hugger Antes", "Indice de Placa Escova Hugger Depois")
#Eliminado Dados NA
DadosEscovacao1<- na.omit(DadosEscovacao)
DadosEscovacao1
#Apartir daqui a Tabela util sera DadosEscovacao1 
#Estrutura de Dados
str(DadosEscovacao)
str(DadosEscovacao1)
#Criando Novas Colunas