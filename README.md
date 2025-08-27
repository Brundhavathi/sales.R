# Amazon Product Rating Analysis: A Predictive Modeling Project

## Project Overview

This project is a comprehensive data analysis of an Amazon product dataset. The primary objective is to understand the key factors that influence a product's rating and to build a predictive model that can accurately forecast a product's rating based on its attributes. This project demonstrates a full data science workflow, from data cleaning and exploratory analysis to advanced predictive modeling.

## Project Objectives

1.  **Data Preprocessing:** Clean and prepare raw data for analysis, handling issues such as missing values and non-numeric characters.
2.  **Exploratory Data Analysis (EDA):** Visualize key relationships between variables to uncover insights into customer behavior.
3.  **Model Building:** Construct and compare two regression models: a Linear Regression model and a Random Forest model.
4.  **Performance Evaluation:** Evaluate the models' accuracy using the Root Mean Square Error (RMSE) to determine which model is a better predictor.

## Key Findings & Insights

Based on the analysis, the following key insights were uncovered:

* **Rating Distribution:** The majority of products on Amazon are highly rated, with a strong positive skewness towards ratings of **4.0 and 5.0 stars**. This suggests a high standard of customer satisfaction.
* **Discounts & Ratings:** There is **no significant correlation** between a product's `discount_percentage` and its final `rating`. This indicates that pricing is not a primary driver of customer satisfaction.
* **Popularity & Ratings:** There is a **strong positive relationship** between a product's `rating_count` and its average `rating`. This suggests that more popular products tend to have higher ratings.

## Model Performance

Two models were built to predict a product's `rating` based on the variables `discounted_price`, `actual_price`, `discount_percentage`, and `rating_count`.

* **Linear Model RMSE:** 0.222
* **Random Forest Model RMSE:** 0.177

The **Random Forest model achieved a lower RMSE (Rooted Mean Square Error)**, indicating that its predictions were more accurate. This result highlights the value of using a more complex, non-linear model for this type of problem.

## Technologies Used

* **Language:** R
* **Packages:** `readr`, `dplyr`, `janitor`, `ggplot2`, `caret`, `randomForest`, `Metrics`

## How to Reproduce this Analysis

1.  Clone this repository to your local machine.
2.  Ensure you have R and the required packages listed above installed.
3.  Place the `amazon_cleaned_data.csv` file in the same directory as the R script.
4.  Run the R script file `(your-script-name.R)` in your preferred R environment (e.g., RStudio, VS Code).
