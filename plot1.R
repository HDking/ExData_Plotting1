#Reading the data
filepath <- "./data/power_consumption.txt" #dataset, replace with own path and file
data <- read.table(filepath, header=TRUE, sep=";", na.strings="?", colClasses = c("character", "character", "numeric", "numeric","numeric", "numeric","numeric","numeric","numeric"))
sub_data <- data[data$Date ==  "1/2/2007" | data$Date == "2/2/2007",]

#code that creates the PNG file
png(file="plot1.png", width = 480, height = 480, units= "px", bg="transparent")

#Creating plot1.png
hist(sub_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylim=c(0,1200))
axis(1, at= c(0,2,4,6))

#close the connection
dev.off()

