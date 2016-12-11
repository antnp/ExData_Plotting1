# plot2.R
# Exploratory Data Analysis

setwd("~/coursera/ExData_Plotting1")

# load data
source("p1-load.R")

png(filename = "plot2.png")
plot(data$DateTime, data$Global_active_power, type = "l", 
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()