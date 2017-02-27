## Generating plot 4

par(mfrow = c(2, 2))

par(mar = c(4, 4, 4, 4))

plot(data_subset$Date_time, data_subset$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

plot(data_subset$Date_time, data_subset$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

plot(data_subset$Date_time, data_subset$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")
points(data_subset$Date_time, data_subset$Sub_metering_2, type = "l",
       col = "red")
points(data_subset$Date_time, data_subset$Sub_metering_3, type = "l",
       col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "o", cex = 0.6)

plot(data_subset$Date_time, data_subset$Global_reactive_power, type = "l", xlab = "datetime",
     ylab = "Global_reactive_power")


## Directing Plot 4 to png File

dev.copy(png,"plot4.png", width = 480, height = 480)
dev.off()