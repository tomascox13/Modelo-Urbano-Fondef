## --------------------------------------------------------------------------------------
library(caret)
library(caTools)
library(dplyr)
library(dodgr)
library(ggplot2)
#library(mapedit)
#library(leaflet)
library(osmdata)
library(randomForest)
library(readxl)
library(reshape2)
library(sf)
#library(tidyr)
#library(caret)



## --------------------------------------------------------------------------------------
options(scipen=999) # para que no tenga notación científica.


## --------------------------------------------------------------------------------------
dir_datos = "C:/Users/tomas/OneDrive/Academico FAU/FONDEF Electromovilidad/MODELOS/datos"


## --------------------------------------------------------------------------------------
p_caso_de_estudio = "Temuco"
p_comunas = c("Temuco","Padre Las Casas")
#comunas = c("Santiago")



## --------------------------------------------------------------------------------------
#codigos ine comunas:
codigos_comunas_ine = read.csv(paste0(dir_datos,"/input/codigos_comunas_ine.csv"),sep=";")
p_cod_comunas =  codigos_comunas_ine[codigos_comunas_ine$Nombre_Comuna %in% p_comunas,]
rm(codigos_comunas_ine)




