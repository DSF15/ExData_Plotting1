# Exploratory Data Analysis - Project 1
# Plot 3

power <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
power2 <- subset(power, Date=="1/2/2007" | Date=="2/2/2007"  )
power2$datetime <- strptime(paste(power2$Date, power2$Time), "%d/%m/%Y %H:%M:%S")
power2$nSub_metering_1 <- as.numeric(as.character(power2$Sub_metering_1))
power2$nSub_metering_2 <- as.numeric(as.character(power2$Sub_metering_2))
power2$nSub_metering_3 <- as.numeric(as.character(power2$Sub_metering_3))


library(datasets)
png("plot3.png", width=480, height=480, units="px")

plot(power2$datetime, power2$nSub_metering_1, type="l", xlab="", 
     ylab="Energy sub metering" )
lines(power2$datetime,power2$nSub_metering_2, type="l", col="red")
lines(power2$datetime,power2$nSub_metering_3, type="l", col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, lwd=1, col=c("black", "red", "blue"))


dev.off()