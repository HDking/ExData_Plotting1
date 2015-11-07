#Reading the data
filepath <- "./data/power_consumption.txt" #dataset, replace with own path and file
data <- read.table(filepath, header=TRUE, sep=";", na.strings="?", colClasses = c("character", "character", "numeric", "numeric","numeric", "numeric","numeric","numeric","numeric"))
sub_data <- data[data$Date ==  "1/2/2007" | data$Date == "2/2/2007",]

#code that creates the PNG file
png(file="plot2.png", width = 480, height = 480, units= "px", bg="transparent")

#Creating plot2.png
plot(sub_data$Global_active_power, labels=FALSE, type="l", ylab = "Global Active Power (kilowatts)", xlab="")
axis(2, at=c(0,2,4,6))
axis(1, at=c(0,1440,2880), labels = c("Thu", "Fri", "Sat"))


#close the connection
dev.off()

