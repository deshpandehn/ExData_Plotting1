data <- read.table("/home/mukti/Hrishi/eda/proj1/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
data1 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

data2 <- data1
data2$Datetime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")

plot(data2$Datetime, data2$Sub_metering_1, type = "l",ylab = "Energy sub metering")
points(data2$Datetime, data2$Sub_metering_2, type = "l", col = "red")
points(data2$Datetime, data2$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1 )

dev.copy(png,'plot3.png')
dev.off()

