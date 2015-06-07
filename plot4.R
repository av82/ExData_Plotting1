plot4<-function(){
  dataset<-read.csv("data//household_power_consumption.txt",sep=";",dec=".")
  subsetdata<-test[test$Date %in% c("1/2/2007","2/2/2007"),]
  #data required for 4th plot
  datetime<- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  power<-as.numeric(subsetdata$Global_active_power) 
  reactive_power<-as.numeric(subsetdata$Global_reactive_power) 
  meter1 <- as.numeric(subSetData$Sub_metering_1)
  meter2 <- as.numeric(subSetData$Sub_metering_2)
  meter3 <- as.numeric(subSetData$Sub_metering_3)
  voltage <- as.numeric(subSetData$Voltage)
  par(mfrow=c(2,2))
  plot(datetime,power, type="l", xlab="", ylab="Global Active Power")
  plot(datetime,voltage, type="l", xlab="datetime", ylab="Voltage")
  plot(datetime, meter1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, meter2, type="l", col="red")
  lines(datetime, meter3, type="l", col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
  plot(datetime,reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
  dev.copy(png, file="plot3.png", width=480, height=480)
  dev.off()
}
plot4()

