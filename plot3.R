#Reading the data
filepath <- "./data/power_consumption.txt" #dataset, replace with own path and file
data <- read.table(filepath, header=TRUE, sep=";", na.strings="?", colClasses = c("character", "character", "numeric", "numeric","numeric", "numeric","numeric","numeric","numeric"))
sub_data <- data[data$Date ==  "1/2/2007" | data$Date == "2/2/2007",]

#code that creates the PNG file
png(file="plot3.png", width = 480, height = 480, units= "px", bg="transparent")

#Creating plot2.png
plot(sub_data$Sub_metering_1, labels=FALSE, type="n", ylab = "Energy sub metering", xlab="")
lines(sub_data$Sub_metering_1, type="l")
lines(sub_data$Sub_metering_2, type="l", col="red")
lines(sub_data$Sub_metering_3, type="l", col="blue")
axis(2, at=c(0,10,20,30))
axis(1, at=c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))

#Legend
legend("topright", lty=c(1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

#close the connection
dev.off()

