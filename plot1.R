source("getData.R")
pData <- data()

lim <- c(0,1200)

#openDevice
png(filename = "plot1.png",
    width = 480, height = 480, units = "px",
    bg = "white")
hist(pData$Global_active_power, main="Global Active Power",
     xlab = "Global Active Power (killowats)", col="red", ylim = lim)
#closeDevice
dev.off()