data <- read.table("/home/mukti/Hrishi/eda/proj1/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
data1 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

data2 <- data1
data2$Datetime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2))

plot(data2$Datetime, data2$Global_active_power, type = "l", ylab = "Global Active Power")

plot(data2$Datetime, data2$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(data2$Datetime, data2$Sub_metering_1, type = "l",ylab = "Energy sub metering")
points(data2$Datetime, data2$Sub_metering_2, type = "l", col = "red")
points(data2$Datetime, data2$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), bty = "n",lty = 1 )

plot(data2$Datetime, data2$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.copy(png,'plot4.png')
dev.off()
