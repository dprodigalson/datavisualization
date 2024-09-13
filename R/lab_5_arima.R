# Install and load the forecast package
# Install 'forecast' if it's not already installed
# Run this line only once if the package is not installed

# install.packages("forecast")

# Load the 'forecast' package into the current R session
library(forecast)

# PART 1: Decomposing Time Series Data

# Step 1: Load quarterly sales data with 12 observations (frequency = 4 for quarterly data)
# 'sales_data' represents quarterly sales data over 3 years.
sales_data <- ts(c(100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650), frequency = 4)

# Decompose the time series into trend, seasonal, and residual components using STL
# 's.window = "periodic"' specifies that the seasonality is assumed to repeat periodically.
decomposed_sales <- stl(sales_data, s.window = "periodic")

# Plot the decomposition
# This will display four plots: the original data, the seasonal component, the trend, and the residuals.
plot(decomposed_sales)

# PART 2: Fitting ARIMA Model and Forecasting Future Sales

# Step 2: Load new monthly sales data with 8 observations (frequency = 12 for monthly data)
# This data represents monthly sales, so the frequency is set to 12 (12 months in a year).
sales_data <- ts(c(150, 160, 170, 180, 190, 200, 210, 220), frequency = 12)

# Fit an ARIMA model to the new sales data
# 'auto.arima()' automatically selects the best ARIMA model based on the data.
sales_arima <- auto.arima(sales_data)

# Step 3: Forecast future sales for the next 6 months
# 'h = 6' specifies that we want to forecast 6 time periods ahead.
sales_forecast <- forecast(sales_arima, h = 6)

# Step 4: Plot the forecast
# This plot will display the original data and the forecasted values, with shaded areas indicating the confidence intervals.
plot(sales_forecast)
