# Exploratory Data Analysis - Project 1
# Plot 2

power <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
power2 <- subset(power, Date=="1/2/2007" | Date=="2/2/2007"  )
power2$datetime <- strptime(paste(power2$Date, power2$Time), "%d/%m/%Y %H:%M:%S")
power2$nGlobal_active_power <- as.numeric(as.character(power2$Global_active_power))


library(datasets)
png("plot2.png", width=480, height=480, units="px")

plot(power2$datetime, power2$nGlobal_active_power, typ='l', xlab="", 
     ylab="Global Active Power (kilowatts)")


dev.off()