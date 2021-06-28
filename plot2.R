x<-read.table(file = "C:/Users/Romain/Desktop/datasciencecoursera/household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?")

x<-subset(x,x$Date=="1/2/2007"|x$Date=="2/2/2007")
View(x)
x$Date = paste(x$Date,x$Time,sep = " ")
View(x)

x$Time = strptime(x$Date, format=("%d/%m/%Y %H:%M:%S"),tz = "")

View(x)

plot(x = x$Time,y=x$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatt)")

dev.copy(png,file="plot2.png")
dev.off()
