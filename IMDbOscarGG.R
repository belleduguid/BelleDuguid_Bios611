library(tidyverse)
library(scales)

data <- read_csv("final_data.csv")

model <- lm(`IMDb_Score` ~ `Oscar_and_GG_Won`, data = data) 

summary(model)

library(ggplot2)
ggplot(data, aes(x = `IMDb_Score`, y = `Oscar_and_GG_Won`)) + 
  geom_point(color = "purple") + 
  geom_smooth(method = "lm", color = "green", se = FALSE) + 
  labs(
    title = "Relationship Between IMDb Score and Oscars & Golden Globe Awards Won", 
    x = "IMDb Score", 
    y = "Oscars Golden Globes Won"   
  ) +
  scale_x_continuous(labels = label_number(scale = 1)) +
  theme_minimal()

ggsave("IMDbOscarGG.png")

