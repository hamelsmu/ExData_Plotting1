#######################################################
#Course Project 1 - Exploratory Data Analysis Coursera
#######################################################

#This File Pre-Processes And Filters Data

#Remove All Variables From Environment
rm(list = ls())
#Setup Working Directory
setwd('/Users/hhusain/Git_Repositories/datasciencecoursera/ExData_Plotting1')

#Download File
loc = 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(loc, 'p1.zip', method = 'curl')

#Read In File
p1dat = read.table('household_power_consumption.txt', header = T,
                   sep = ';', na.strings = c('NA', '?', ''))

#Convert "Date" Column Into Date Using Lubridate
library(lubridate)
p1dat$Date = dmy(p1dat$Date)

#Filter Out Data For Only Two Days
selected_dates = ymd(c('2007-02-01', '2007-02-02'))
filtered_p1dat = p1dat[p1dat$Date %in% selected_dates, ]


#Create Date Time Field
filtered_p1dat$DateTime = with(filtered_p1dat, ymd_hms(paste(Date, Time)))

#Remove full data frame as we only need data for two days
rm(p1dat)





