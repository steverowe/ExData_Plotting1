library(dplyr)
library(lubridate)
library(readr)

#assumes the power consumption file is in the working directory
#original source: https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

household_power_consumption <- read_csv2("household_power_consumption.txt", na="?")

power <- filter(household_power_consumption, Date == "2/1/2007" | Date == "2/2/2007")

power <- mutate(power, Date = dmy(Date), Time = hms(Time))
