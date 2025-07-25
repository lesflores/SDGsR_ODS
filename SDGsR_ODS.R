# ---------------- ODS

# Instala desde GitHub
devtools::install_github("DrMattG/SDGsR", dependencies = TRUE)

library(SDGsR)
library(dplyr)

# Lista de indicadores
ind_lst <- get_indicator_list()

# Filtrar los del ODS 16 (cambia # según prefieras)
ods16_indicadores <- ind_lst %>% filter(goal == "16")

View(ods16_indicadores) # Ver goal, target, code y descripción

# Por ejemplo: descargar datos del indicador 16.6.2 (satisfacción con servicios públicos)
datos_1662 <- get_indicator_data(indicator = "16.6.2")

# Base de datitos con info
View(datos_1662)  

# Para citar la publicación 
citation("SDGsR")
# Grainger M (2021). _SDGsR: Interface with the UN SDGs API to get data about the Sustainable Development Goals_. R package
# version 0.0.0.9000, commit fa1898e88b9a31a05c2b722f36d6993595536a12, <https://github.com/DrMattG/SDGsR>.
