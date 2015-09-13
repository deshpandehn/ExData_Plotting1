data <- read.table("/home/mukti/Hrishi/eda/proj1/household_power_consumption.txt", sep = ";", header = T, na.strings = "?")
#data[c(1:10),]
#chk1 <- subset(data, data$Sub_metering_3 == 16 & data$Sub_metering_2 == 1)
data1 <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2007")

data2 <- data1
data2$Datetime <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")

plot(data2$Datetime, data2$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)")

dev.copy(png,'plot2.png')
dev.off()

