data <- read.table("/home/mukti/Hrishi/eda/proj1/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
data1 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

hist(data1$Global_active_power, col = "red", breaks = 13, main = "Global Active Power", ylab = "Frequency",  xlab = "Global Active Power (kilowatts)")

dev.copy(png,"plot1.png")
dev.off()

