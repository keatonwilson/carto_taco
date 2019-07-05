#Data Generation and outlining
#Keaton Wilson
#keatonwilson@me.com
#2019-07-05

#packages
library(tidyverse)

#making blank data frames
protein = data.frame(ID = numeric(), name = character(),
                     num_carne_asada = numeric(), num_al_pastor = numeric(),
                     num_barbacoa = numeric(), num_cabeza = numeric(), 
                     num_costillas = numeric(), num_pescado = numeric(),
                     num_lengua = numeric(), num_other = numeric(), 
                     num_veggie = numeric(), stringsAsFactors = FALSE)

write_csv(protein, path = "./data/protein.csv")

salsa = data.frame(ID = numeric(), name = character(),
                   verde = logical(), verde_molcajete = logical(), 
                   pico_de_gallo = logical(), guacamole_taquero = logical(),
                   verde_cruda = logical(), salsa_arbol = logical(), 
                   roja = logical(), stringsAsFactors = FALSE)

write_csv(salsa, path = "./data/salsa.csv")

locality = data.frame(ID = numeric(), name = character(),
                      lon = numeric(), lat = numeric(), moves = logical(), 
                      alt_lon = numeric(), alt_lat = numeric(), 
                      start_hour = numeric(), end_hour = numeric())

write_csv(locality, path = "./data/locality.csv")

curated = data.frame(ID = numeric(), name = character(),
                     rec_dish = character(), rec_salsa = character(),
                     one_sentence_description = character())

write_csv(curated, path = "./data/curated.csv")

offerings = data.frame(ID = numeric(), name = character(), 
                       num_tacos = numeric(), num_burritos = numeric(), 
                       num_dogos = numeric(), num_caramelos = numeric(), 
                       num_vampiros = numeric(), num_toselotes = numeric(),
                       num_tacos_dorados = numeric(), num_tacos_vapor = numeric(), 
                       num_chimi = numeric(), num_tamales = numeric(), 
                       num_tortas = numeric())

write_csv(offerings, path = "./data/offerings.csv")