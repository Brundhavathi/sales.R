#load necessary package
library(dplyr)
library(janitor)

# load data
amazon_data <- read.csv("C:/Users/brund/OneDrive/Desktop/amazon cleaned data.csv",
                        header = TRUE,
                        sep = ",",
                        stringsAsFactors = FALSE)

head(amazon_data)


# Clean column names
amazon_data <- amazon_data %>% janitor::clean_names()

# Select necessary columns and remove missing values
model_data <- amazon_data %>%
  dplyr::select(discounted_price, actual_price, discount_percentage, rating, rating_count) %>%
  na.omit()

#data manipulation and visualization

library(ggplot2)

# Plot 1: Distribution of Ratings

ratings_plot <- ggplot(model_data, aes(x = rating)) +
  geom_histogram(binwidth = 0.1, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Product Ratings", x = "Rating", y = "Count")
# Save the plot to as a file

ggsave("ratings_histogram.png", ratings_plot)

# Plot 2: Relationship between Discount Percentage and Rating

discount_plot <- ggplot(model_data, aes(x = discount_percentage, y = rating)) +
  geom_point(alpha = 0.5, color = "darkblue") +
  labs(title = "Rating vs. Discount Percentage", x = "Discount Percentage", y = "Rating")
ggsave("rating_vs_discount.png", discount_plot)

# Plot 3: Relationship between Number of Ratings and Rating

rating_count_plot <- ggplot(model_data, aes(x = rating_count, y = rating)) +
  geom_point(alpha = 0.5, color = "forestgreen") +
  labs(title = "Rating vs. Number of Ratings", x = "Number of Ratings", y = "Rating")
ggsave("rating_vs_rating_count.png", rating_count_plot)