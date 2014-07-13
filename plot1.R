data=read.table("household_power_consumption.txt",sep=";",skip=66637,nrows=2880,
                col.names=c("Date","time","power","R-power","voltage","intensity","Sub1","Sub2","Sub3"))

png(filename = "plot1.png")

hist(data$power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.off()

