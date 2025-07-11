# Load required libraries
library(readr)
library(ggplot2)
library(dplyr)

# Read the cleaned CSV exported from Spark
df <- read_csv("monthly_revenue.csv")

# Create a proper date column (1st of each month)
df <- df %>%
  mutate(date = as.Date(paste(year, month, "01", sep = "-")))

# Plot monthly revenue trend
ggplot(df, aes(x = date, y = total_revenue)) +
  geom_line(color = "steelblue", size = 1.2) +
  geom_point(color = "darkblue", size = 2) +
  scale_x_date(date_labels = "%b %Y", date_breaks = "2 months") +
  labs(
    title = "📈 Monthly Revenue Trend",
    x = "Month",
    y = "Total Revenue"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
