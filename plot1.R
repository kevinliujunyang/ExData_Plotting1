#load data
data <- read.table("household_power_consumption.txt", header = TRUE, sep =";")
#subset data
Subdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
#adjusting variable
GlobalActivePower <- as.numeric(Subdata$Global_active_power)
GlobalActivePower_kilowwatts = GlobalActivePower/1000
#plot
png("plot2.png", width=480, height=480)
hist(GlobalActivePower_kilowwatts, col = "red", main = "Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", breaks = 20)
dev.off()
