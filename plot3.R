data=read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880,
                col.names=c("Date","time","power","R-power","voltage","intensity","Sub1","Sub2","Sub3"))
#dates = as.numeric(as.Date(data[,1],"%d/%m/%Y"))
#times = as.numeric(strptime(data[,2],"%H:%M:%S"))/(24*3600) - as.numeric(Sys.Date())
#time_stamps=dates+times

time_stamps=paste(data[,1], data[,2])

timestamps = strptime(time_stamps,format="%d/%m/%Y%H:%M:%S")


png(filename = "plot3.png")

plot(timestamps,data$Sub1, col="black", ylab = "Energy sub metering",type="l",lwd=1)
lines(timestamps, data$Sub2, type="l",col="red",lwd=1)
lines(timestamps, data$Sub3, type="l",col="blue",lwd=1)
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
       text.font=1,lwd=c(1,1,1),col=c("black","red","blue"))

dev.off()

