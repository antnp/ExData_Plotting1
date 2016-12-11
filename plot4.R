# plot4.R

setwd("~/coursera/ExData_Plotting1")

# load data
source("p1-load.R")

png(filename = "plot4.png")

# plot 2x2 
par(mfrow = c(2,2))

with(data, {
  # upper left
  plot(DateTime, Global_active_power, type = "l", xlab = "", 
       ylab = "Global Active Power")
  
  # upper right
  plot(DateTime, Voltage, type = "l", xlab = "datetime")
  
  # bottom left
  plot(DateTime, Sub_metering_1, type = "l", col = "black", xlab = ""
       , ylab = "Energy sub metering")
  lines(DateTime, Sub_metering_2, type = "l", col = "red")
  lines(DateTime, Sub_metering_3, type = "l", col = "blue")
  legend(x = "topright", names(data)[c(7,8,9)], lty = 1, 
         col = c("black", "red", "blue"))
  
  # bottom right
  plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime")
})

dev.off()