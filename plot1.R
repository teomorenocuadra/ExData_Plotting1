# Plot 1

## Generating Plot 1

par(mfrow = c(1, 1))

hist(data_subset$Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")


## Directing Plot 1 to png file

dev.copy(png, "plot1.png", width = 480, height = 480)
dev.off()