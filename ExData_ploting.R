##plot 1
png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylim = c(0,1200), 
     xlim = c(0,6), breaks = 12)
dev.off()

##plot 2
png("plot2.png", width=480, height=480)
plot(x=data$date_time, y = data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

##plot 3
png("plot3.png", width=480, height=480)
with(data, 
     { plot(x=date_time, y = Sub_metering_1, type="l", col = "black", xlab="", ylab="Energy sub metering")
       lines(x=date_time, y = Sub_metering_2, type="l", col = "red")
       lines(x=date_time, y = Sub_metering_3, type="l", col = "blue")
       legend("topright", lty = "solid", col = c("black", "red", "blue"), 
              legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
     })
dev.off()

##plot 4
png("plot4.png", width=480, height=480)
par(mfrow = c(2,2))

# Top-left
# Line, x = time_date, y = Global Active Power
plot(x=data$date_time, y = data$Global_active_power, type="l", col = "black", xlab="", ylab="Global active power")

# Top-right
# Line, x = time_date, y = Voltage, ylab: datetime
plot(x=data$date_time, y = data$Voltage, type="l", col = "black", ylab="Voltage", xlab = "datetime")

# Bottom-left
# Plot 3
with(data, 
     { plot(x=date_time, y = Sub_metering_1, type="l", col = "black", xlab="", ylab="Energy sub metering")
       lines(x=date_time, y = Sub_metering_2, type="l", col = "red")
       lines(x=date_time, y = Sub_metering_3, type="l", col = "blue")
       legend("topright", lty = "solid", col = c("black", "red", "blue"), 
              legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
     })

# Bottom-right
# Line, x = time_date, y = Global_reactive_power, ylim[0.0:0.5], ylab: datetime
plot(x=data$date_time, y = data$Global_reactive_power, type="l", col = "black", ylab="Global_reactive_power", xlab = "datetime")
dev.off()

