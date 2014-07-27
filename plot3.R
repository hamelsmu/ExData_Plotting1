###########
##Plot 3##
###########

#Setup Working Directory
#Make sure this is correct before running code!!!
setwd('/Users/hhusain/Git_Repositories/datasciencecoursera/ExData_Plotting1')

###Get The Data If It Doesn't Exist, Uses The Script 'GetData.R', 
###which is located in the same root directory
if (!exists('filtered_p1dat')) {
        source('GetData.R')
}

#Since there is so much code involved with creating Plot 3
#I made a function so I can call it later for other plots
CreatePlot3 = function(){
        #Add first line and baseline structure
        with(filtered_p1dat, {
                plot(DateTime, Sub_metering_1, 
                     ylab =  'Energy sub metering',
                     xlab = '',
                     pch = NA,
                     lines(DateTime, Sub_metering_1)) 
                #Add Second Line
                lines(DateTime, Sub_metering_2, 
                      col = 'red')
                #Add Third Line
                lines(DateTime, Sub_metering_3, 
                      col = 'blue')
                #Add Legend
                legend('topright', lty = 1, lwd = 2, col = c('black', 'red', 'blue'),
                       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
                )
        })
}

#Copy To png
CreatePlot3()
dev.copy(png, file = 'plot3.png')
dev.off()
