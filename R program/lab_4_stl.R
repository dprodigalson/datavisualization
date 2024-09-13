# Step 1: Load time series data with quarterly frequency
# 'sales_data' is a time series object containing 12 observations of sales data.
# 'frequency = 4' indicates that the data has 4 observations per year, suggesting quarterly data.
sales_data <- ts(c(100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650), frequency = 4)

# Step 2: Decompose the time series using STL decomposition
# STL decomposition breaks the time series into three components:
# seasonal, trend, and residual.
# 's.window = "periodic"' tells STL to use a fixed periodic seasonal component.
decomposed_sales <- stl(sales_data, s.window = "periodic")

# Step 3: Plot the decomposition
# This plots the decomposed components: seasonal, trend, and residuals.
# The original data is also displayed for reference.
plot(decomposed_sales)
