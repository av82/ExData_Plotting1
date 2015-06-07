plot2<-function(){
  dataset<-read.csv("data//household_power_consumption.txt",sep=";")
  subsetdata<-test[test$Date %in% c("1/2/2007","2/2/2007"),]
  #data required for 2nd plot
  subsetdata$Time <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  global_act_pow<-as.numeric(subsetdata$Global_active_power) 
  plot(subsetdata$Time,global_act_pow,type="l", xlab="", ylab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot2.png", width=480, height=480)
  dev.off()
}
plot2()