# Plot 2

## Generating Plot 2

par(mfrow = c(1, 1))

plot(data_subset$Date_time, data_subset$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

## Directing Plot 2 to png file

dev.copy(png, "plot2.png", width = 480, height = 480)
dev.off()