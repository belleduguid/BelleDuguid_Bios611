library(tidyverse)

data <- read_csv("final_data.csv")

ggplot(data, aes(Genre)) +
  geom_histogram(stat = "count", fill = "skyblue", color = "black") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, size = 10),
    axis.text.y = element_text(size = 10)
  ) +
  labs(
    title = "Distribution of Genres", # Adds a title
    x = "Genre", # Labels x-axis
    y = "Count"  # Labels y-axis
  )
ggsave("Distribution of Genres.png")