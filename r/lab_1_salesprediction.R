# Create a data frame 'sales_data' with two columns: 'Time' and 'Sales'
# 'Time' is a sequence of time periods from 1 to 10
# 'Sales' represents the sales data corresponding to each time period
sales_data <- data.frame(Time = 1:10, Sales = c(100, 120, 130, 140, 150, 160, 180, 190, 210, 220))

# Fit a linear regression model using the lm() function
# The model aims to predict 'Sales' based on 'Time' (Time as the independent variable, Sales as the dependent variable)
model <- lm(Sales ~ Time, data = sales_data)

# Create a data frame 'future_time' that contains future time periods (from 11 to 15)
# These are the time periods for which we want to forecast sales
future_time <- data.frame(Time = 11:15)

# Use the 'predict()' function to predict future sales based on the linear model
# 'newdata = future_time' tells the model to predict sales for time periods 11 to 15
predicted_sales <- predict(model, newdata = future_time)

# Display the predicted sales values for the time periods 11 to 15
# This shows the forecasted sales numbers for the future time periods
print(predicted_sales)

# Calculate the range for the y-axis (sales values)
# We use both the actual sales data and the predicted sales to determine the range
y_range <- range(c(sales_data$Sales, predicted_sales))

# Calculate the range for the x-axis (time values)
# We include both the actual time periods (1 to 10) and the future time periods (11 to 15)
x_range <- range(c(sales_data$Time, future_time$Time))

# Create a plot of actual sales over time
# 'type = "b"' creates both points (for each time period) and lines connecting them
# 'col = "blue"' sets the color for the actual sales data to blue
# 'xlab' and 'ylab' label the x-axis (Time) and y-axis (Sales)
# 'xlim' and 'ylim' ensure that both actual and predicted data fit within the plot
plot(sales_data$Time, sales_data$Sales, type = "b", col = "blue", xlab = "Time", ylab = "Sales", 
     ylim = y_range, xlim = x_range)

# Add predicted sales data to the existing plot as red lines
# 'lines()' adds a line connecting the predicted sales points for the future time periods (11 to 15)
# 'type = "b"' means both points and lines are drawn, and 'col = "red"' makes the predicted line red
lines(future_time$Time, predicted_sales, type = "b", col = "red")

# Optional: You can also add points for predicted sales to make them more prominent
# The points() function adds red points at each future time period's predicted sales value
points(future_time$Time, predicted_sales, col = "red", pch = 19)
