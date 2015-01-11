source("getData.R")

pData <- data()

#openDevice
png(filename = "plot3.png",
    width = 480, height = 480, units = "px",
    bg = "white")


plot(x=pData$DateTime,
     y=pData$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering")

lines(x=pData$DateTime,
      y=pData$Sub_metering_2,
      type="l",
      col="red")
lines(x=pData$DateTime,
      y=pData$Sub_metering_3,
      type="l",
      col="blue")
legendTxt <- c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topright",legendTxt, lty=c(1,1,1), lwd=c(2.5,2.5,2.5), col=c("black","blue","red") )


#closeDevice
dev.off()