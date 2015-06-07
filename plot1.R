plot1<-function(){
  dataset<-read.csv("data//household_power_consumption.txt",sep=";")
  subsetdata<-test[test$Date %in% c("1/2/2007","2/2/2007"),]
  #data required for 1st plot
  global_act_pow<-as.numeric(subsetdata$Global_active_power) 
  hist(global_act_pow,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
  dev.copy(png, file="plot1.png", width=480, height=480)
  dev.off()
}
plot1()