library(dplyr)
library(lubridate)
library(readr)
household_power_consumption <- read_csv2("C:/Users/Steve/Desktop/tmp/Exploratory/Proj1/household_power_consumption.txt", na="?")

power <- mutate(household_power_consumption, Date = dmy(Date), Time = hms(Time))
