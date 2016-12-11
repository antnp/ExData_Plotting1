# Exploratory Data Analysis
# Project 1
# Load data script 

# load libraries
library(readr)
library(lubridate)

# Set working directory
setwd("~/coursera/ExData_Plotting1")

# load data
data <- read_delim("./data/household_power_consumption.txt",
                   delim = ";", na = "?")

# Validate data load
nrow(data) == 2075259 && ncol(data) == 9

# Subset to 2 days
data <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")
table(data$Date)

# Convert to date and time
# using the lubridate package
data$Date <- dmy(test$Date)

head(data$Time)
