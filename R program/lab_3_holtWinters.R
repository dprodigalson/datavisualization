# Step 1: Load data with yearly frequency
# 'sales_data' is a time series object containing yearly sales data.
# 'frequency = 1' indicates that the data is collected yearly (one observation per year).
sales_data <- ts(c(110, 130, 150, 170, 190, 210), frequency = 1)

# Step 2: Apply exponential smoothing using the Holt-Winters method (without seasonality)
# The 'HoltWinters()' function is used to perform exponential smoothing.
# 'gamma=FALSE' disables seasonal smoothing since our data does not have a seasonal component.
sales_model <- HoltWinters(sales_data, gamma = FALSE)

# Step 3: Load the 'forecast' package to perform sales forecasting
# 'forecast' package is used to create future forecasts based on the sales model.
# Install 'forecast' package if it's not already installed
# install.packages("forecast")

# Load the 'forecast' package
library(forecast)

# Forecast future sales for the next 5 years
# 'h=5' specifies that we want to forecast sales for the next 5 time periods (years in this case).
sales_forecast <- forecast(sales_model, h = 5)

# Step 4: Plot the results
# This will plot both the original sales data and the forecasted sales, along with confidence intervals.
plot(sales_forecast)
