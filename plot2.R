###########
##Plot 2##
###########

#Setup Working Directory
#Make sure this is correct before running code!!!
setwd('/Users/hhusain/Git_Repositories/datasciencecoursera/ExData_Plotting1')

###Get The Data If It Doesn't Exist, Uses The Script 'GetData.R', 
###which is located in the same root directory
if (!exists('filtered_p1dat')) {
        source('GetData.R')
}

#Draw Plot
with(filtered_p1dat, 
     plot(DateTime, Global_active_power, 
          ylab =  'Global Active Power (kilowatts)',
          pch = NA,
          lines(DateTime, Global_active_power,)
     )
)

#Copy To png
dev.copy(png, file = 'plot2.png')
dev.off()