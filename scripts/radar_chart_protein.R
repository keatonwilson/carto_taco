#Radar plots script
#Keaton Wilson
#keatonwilson@me.com
#2019-07-01

#packages
library(tidyverse)
library(ggradar)
library(scales)

#fake data - number of menu items for each protein source
psuedo_taco_protein = data.frame(establishment = c(1,2),
                                 carne_asada = c(10, 8), 
                                 cabeza = c(2,0),
                                 lengua = c(6,4),
                                 barbacoa = c(0,0), 
                                 al_pastor = c(1,0),
                                 costillas = c(0,0),
                                 veggie = c(3,7),
                                 fish = c(1,0),
                                 other = 4)

g_test = psuedo_taco_protein %>%
  gather("protein", "count", -establishment) %>%
  group_by(establishment) %>%
  mutate(percent = count/sum(count),
         total_count = sum(count)) %>%
  select(establishment, protein, percent) %>%
  spread(protein, percent) %>%
  filter(establishment == 1) %>%
  ggradar(grid.max = 0.50, label.gridline.max = FALSE, label.gridline.mid = FALSE,
          label.gridline.min = FALSE, background.circle.colour = "#F2CA99", 
          group.colours = "#F25D07", axis.labels = c("al Pastor", "Barbacoa", "Cabeza", "Carne asada", 
                                                     "Costillas", "Pescado", "Lengua", "Other", "Veggie"),
          group.point.size = 1, group.line.width = 1) +
  theme(legend.position = "none")

g_test

ggsave(plot = g_test, filename = "./content/protein_figs/test_1.jpeg", device = "jpeg")

