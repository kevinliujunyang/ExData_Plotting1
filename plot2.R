#load Data
data <- read.table("household_power_consumption.txt", header = TRUE, sep =";")
#subset Data
Subdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
#adjusting Variable
datetime <- strptime(paste(Subdata$Date, Subdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
GlobalActivePower <- as.numeric(Subdata$Global_active_power)
GlobalActivePower_kilowwatts = GlobalActivePower/1000
#plot
png("plot2.png", width=480, height=480)
plot(datetime, GlobalActivePower_kilowwatts, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
