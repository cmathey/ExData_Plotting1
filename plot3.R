source('common.R')
data <- loadData()

with (data, {
    plot(DateTime, Sub_metering_1, 
         type = 'l',
         main='',
         xlab='',
         ylab='Energy sub metering')
    lines(DateTime, Sub_metering_2, col='red')
    lines(DateTime, Sub_metering_3, col='blue')
    legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
           lty=1, col=c('black', 'red', 'blue'), bty='y')
})

dev.copy(png, file = "plot3.png", width = 480, height = 480, bg = 'white') 
dev.off()
