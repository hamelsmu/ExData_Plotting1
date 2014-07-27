############
##Plot 1##
############

#Setup Working Directory
#Make sure this is correct before running code!!!
setwd('/Users/hhusain/Git_Repositories/datasciencecoursera/ExData_Plotting1')


###Get The Data If It Doesn't Exist, Uses The Script 'GetData.R', 
###which is located in the same root directory
if (!exists('filtered_p1dat')) {
        source('GetData.R')
}

##Draw Plot and Send to PNG
hist(filtered_p1dat$Global_active_power, main = "Global Active Power", 
     xlab = 'Global Active Power (kilowatts)', col = 'red')
dev.copy(png, file = 'plot1.png')
dev.off()