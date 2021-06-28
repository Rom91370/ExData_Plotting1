x<-read.table(file = "C:/Users/Romain/Desktop/datasciencecoursera/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

x<-subset(x,x$Date=="1/2/2007"|x$Date=="2/2/2007")
View(x)
x$Date = paste(x$Date,x$Time,sep = " ")
View(x)

x$Time = strptime(x$Date, format=("%d/%m/%Y %H:%M:%S"),tz = "")

View(x)

plot(x = x$Time,y=x$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(x = x$Time, y= x$Sub_metering_2, col="red")
lines(x = x$Time, y= x$Sub_metering_3, col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty = 1)

dev.copy(png, file="plot3.png")
dev.off()
