# Step 1: Load data
# 'sales_data' represents sales over 10 time periods (months).
sales_data <- c(120, 130, 135, 145, 150, 155, 160, 165, 170, 175)

# Step 2: Load the 'stats' package to use the filter function
# The 'filter()' function is part of the 'stats' package in base R.
library(stats)

# Step 3: Define a moving average function
# This function calculates a centered moving average of the data 'x' over a window size of 'n' (default is 3).
# 'sides = 2' ensures the moving average is centered.
moving_avg <- function(x, n = 3) {
  filter(x, rep(1 / n, n), sides = 2)
}

# Step 4: Apply the moving average function to smooth the sales data
# 'smoothed_sales' is the result of applying a 3-point moving average on 'sales_data'.
smoothed_sales <- moving_avg(sales_data)

# Step 5: Plot original sales data (blue) and smoothed sales data (red)
# 'type = "b"' plots both points and lines.
# 'col = "blue"' specifies the color for the original sales data.
plot(sales_data, type = "b", col = "blue", xlab = "Month", ylab = "Sales")

# Add the smoothed sales data (red line) to the existing plot
# 'lines()' adds a line for the smoothed data, with 'type = "b"' showing both points and lines.
lines(smoothed_sales, col = "red", type = "b")
