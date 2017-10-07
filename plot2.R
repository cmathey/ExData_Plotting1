source('common.R')

data <- loadData()
with (data, 
      plot(DateTime, Global_active_power, 
           type = 'l',
           main='',
           xlab='',
           ylab='Global Active Power (kilowatts)'))
dev.copy(png, file = "plot2.png", width = 480, height = 480, bg = 'white') 
dev.off()
