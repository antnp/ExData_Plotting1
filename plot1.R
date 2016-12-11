# plot1.R

setwd("~/coursera/ExData_Plotting1")

# load the data
source("p1-load.R")

# Create the plot
# default height and width are 480
png(filename = "plot1.png")
hist(data$Global_active_power, col = "red", main = "Global Active Power",
    xlab = "Global Active Power (kilowatts")
dev.off()