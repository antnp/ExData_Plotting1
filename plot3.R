# plot3.R

setwd("~/coursera/ExData_Plotting1")

# load data
source("p1-load.R")

png(filename = "plot3.png")

plot(data$DateTime, data$Sub_metering_1, type = "l", xlab = "", 
     ylab = "Energy sub metering", col = "black")

# Add other meter readings
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")

# Add legend
legend(x = "topright", names(data)[c(7,8,9)], lty = 1, 
       col = c("black", "red", "blue"))

dev.off()