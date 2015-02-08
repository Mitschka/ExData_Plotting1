png("plot4.png")
data <- read.csv("household_power_consumption.txt", header = T, sep = ";", na.strings = "?", stringsAsFactors = F)
data <- subset(data, Date %in% c("1/2/2007", "2/2/2007"))
par(mfrow = c(2, 2))

plot(data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xaxt = 'n', xlab = "")
axis(1, c(1, which(data$Date == "2/2/2007")[1], nrow(data)), c("Thu", "Fri", "Sat"))

plot(data$Voltage, type = "l", ylab = "Voltage", xaxt = 'n', xlab = "datetime")
axis(1, c(1, which(data$Date == "2/2/2007")[1], nrow(data)), c("Thu", "Fri", "Sat"))

plot(data$Sub_metering_1, xaxt = 'n', type = "l", ylab = "Energy sub metering", col = "black", xaxt = 'n', xlab = "")
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
axis(1, c(1, which(data$Date == "2/2/2007")[1], nrow(data)), c("Thu", "Fri", "Sat"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

plot(data$Global_reactive_power, type = "l", ylab = "Global reactive Power (kilowatts)", xaxt = 'n', xlab = "datetime")
axis(1, c(1, which(data$Date == "2/2/2007")[1], nrow(data)), c("Thu", "Fri", "Sat"))

dev.off()
