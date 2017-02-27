# Plot 3

## Generating Plot 3

par(mfrow = c(1, 1))

plot(data_subset$Date_time, data_subset$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering")

lines(data_subset$Date_time, data_subset$Sub_metering_2, type = "l",
      col = "red")
lines(data_subset$Date_time, data_subset$Sub_metering_3, type = "l",
      col = "blue")

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Directing Plot 3 to png File

dev.copy(png,"plot3.png", width = 480, height = 480)
dev.off()