library(tidyverse)

data <- read_csv("final_data.csv")

ggplot(data, aes(Release_Year)) +
  geom_histogram(stat = "count", fill = "orchid", color = "black") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, size = 10),
    axis.text.y = element_text(size = 10)
  ) +
  labs(
    title = "Distribution of Movies Released per Year", # Adds a title
    x = "Year", # Labels x-axis
    y = "Count"  # Labels y-axis
  )

ggsave("Num Movies Released.png")
