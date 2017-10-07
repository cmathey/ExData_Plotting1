loadData <- function() {
  file <- 'household_power_consumption.txt'
  setAs('character', 'dmyDate', function(from) as.Date(from, format='%d/%m/%Y') )
  # subset of rowsto read, computed by grepping dates in input file
  start <- 66636
  count <- 69517 - start - 1
  header <- read.csv(file, sep=';', header = T, nrows=1)
  data <- read.csv(file, sep = ';', stringsAsFactors=F,
                   skip=start, nrows = count, col.names = colnames(header),
                   colClasses = c('dmyDate', 'character', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'))  
  # Computed column as a POIXlt date time object
  data$DateTime <- with(data, strptime(paste(Date, Time), '%Y-%m-%d %H:%M:%S'))
  return (data)
}