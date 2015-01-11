source("getData.R")

pData <- data()

#openDevice
png(filename = "plot2.png",
    width = 480, height = 480, units = "px",
    bg = "white")

plot(pData$DateTime,pData$Global_active_power,type="l",
     xlab="", ylab="Global Active Power (kilowatts)")


#closeDevice
dev.off()