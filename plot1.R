source('common.R')

data <- loadData()
with (data, 
      hist(Global_active_power, 
           col='red', 
           main='Global Active Power',
           xlab='Global Active Power (kilowatts)'))
dev.copy(png, file = "plot1.png", width = 480, height = 480, bg = 'white') 
dev.off()