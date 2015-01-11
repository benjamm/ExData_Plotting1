# INPUT NAME OF THE FILE TO BE READ
dirPath = 
  "C:/Users/FR004059/Desktop/Missions_Local/Perso/MOOC/Explanatory data analysis/household_power_consumption.txt"

#READING OF THE FILE
mydata = read.table(dirPath,header=TRUE,sep=";")

#extracting the data of the dates 2007-02-01 and 2007-02-02
subset_data = subset(mydata, Date %in% c("1/2/2007","2/2/2007"))

subset_data$Global_active_power= as.numeric(subset_data$Global_active_power)

hist(subset_data$Global_active_power/500,col="red",
     main="Global Active Power",xlab="Global Active Power (killowats)")

dev.copy(png,
  'C:/Users/FR004059/Desktop/Missions_Local/Perso/MOOC/Explanatory data analysis/plot1.png')

dev.off()
