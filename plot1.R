# Exploratory Data Analysis - Project 1
# Plot 1

power <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
power2 <- subset(power, Date=="1/2/2007" | Date=="2/2/2007"  )
power2$nGlobal_active_power <- as.numeric(as.character(power2$Global_active_power))


library(datasets)
png("plot1.png", width=480, height=480, units="px")

hist(power2$nGlobal_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", col=rgb(251/255,0,7/255))

dev.off()