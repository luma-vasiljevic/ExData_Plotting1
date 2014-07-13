data=read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880,
                col.names=c("Date","time","power","R-power","voltage","intensity","Sub1","Sub2","Sub3"))
#dates = as.numeric(as.Date(data[,1],"%d/%m/%Y"))
#times = as.numeric(strptime(data[,2],"%H:%M:%S"))/(24*3600) - as.numeric(Sys.Date())
#time_stamps=dates+times

time_stamps=paste(data[,1], data[,2])

timestamps = strptime(time_stamps,format="%d/%m/%Y%H:%M:%S")


png(filename = "plot2.png")

plot(timestamps,data$power, col="black", ylab = "Global Active Power (kilowatts)",type="l",lwd=1)
dev.off()

