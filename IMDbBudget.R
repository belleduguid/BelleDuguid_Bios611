library(tidyverse)
library(scales)

data <- read_csv("final_data.csv")

model <- lm(`Budget (USD)` ~ `IMDb_Score`, data = data) 

summary(model)

library(ggplot2)
ggplot(data, aes(x = `Budget (USD)`, y = `IMDb_Score`)) + 
  geom_point(color = "blue") + 
  geom_smooth(method = "lm", color = "red", se = FALSE) + 
  labs(
    title = "Relationship Between Budget and IMDb Score", 
    x = "Budget (USD)", 
    y = "IMDb Score"   
  ) +
  scale_x_continuous(labels = label_number(scale = 1)) +
  theme_minimal()

ggsave("IMDbBudget.png")

