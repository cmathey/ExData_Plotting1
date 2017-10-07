source('common.R')
data <- loadData()
# dev.new(width=480, height=480)
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with (data, {
  plot(DateTime, Global_active_power, type='l', main = '', xlab='', ylab='Global Active Power')
  plot(DateTime, Voltage, type='l', main = '', xlab='datetime', ylab='Voltage')
  plot(DateTime, Sub_metering_1, 
       type = 'l',
       main='',
       xlab='',
       ylab='Energy sub metering')
  lines(DateTime, Sub_metering_2, col='red')
  lines(DateTime, Sub_metering_3, col='blue')
  legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
         lty=1, col=c('black', 'red', 'blue'), bty='y')
  plot(DateTime, Global_reactive_power, type='l', main = '', xlab='datetime')
  
})
par(mfrow=c(1,1))
dev.copy(png, file = 'plot4.png', width = 480, height = 480, bg = 'white') 
dev.off()
