library(tidyverse)

merged_z <- read_csv("static/doc/merged_z.csv")
merged_z$idNum <- 1:nrow(merged_z)
# kim <- read_csv("static/page/01-combined.csv")


kim <- merged_z %>% select(idNum, time, channel, text, id,real_name, medium)
kim$time <- as.character(strptime(kim$time, format = "%Y-%m-%d %H:%M:%S"))
write_csv(kim, file = "static/page/kim.csv")
