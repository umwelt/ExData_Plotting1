library(sqldf)

#Get and clean Data
data <- function(){
  file <- "household_power_consumption.txt"
  
  #getting data only among specified dates
  selector <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007' "
  
  #read table data
  powerData <- read.csv.sql(file, sql=selector, sep=";")
  
  #convert date and time cols
  powerData$DateTime <- as.POSIXct(strptime(paste(powerData$Date,powerData$Time), "%d/%m/%Y %H:%M:%S"))
  
  return(powerData)
}

