# Getting, transforming and subsetting data

## Downloading the data

library(downloader)
url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
filename <- "household_power_consumption.zip"
download(url, destfile = filename)

## Reading the data

unzip("household_power_consumption.zip")

data <- read.table("household_power_consumption.txt", sep = ';',
                   header = TRUE, na.strings = "?")

dim(data); str(data)

## Arranging time variables

data$Date_time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

## Subsetting the data

data_subset <- subset(data, Date >= as.Date("2007-02-01") &
                              Date <= as.Date("2007-02-02"))

dim(data_subset); str(data_subset)