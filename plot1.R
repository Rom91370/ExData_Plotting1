x<-read.table(file = "C:/Users/Romain/Desktop/datasciencecoursera/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

x<-subset(x,x$Date=="1/2/2007"|x$Date=="2/2/2007")

x$Date = as.Date(x$Date, format=("%d/%m/%Y"))


x$Time = strptime(x$Time, format=("%H:%M:%S"),tz = "")
x$Time = format(x$Time, format = "%H:%M:%S")
View(x)

hist(x$Global_active_power, col = "red", main = "Global Active Power",xlab = "Global Active Power (kilowatt)")
dev.copy(png,file="plot1.png")
dev.off()
