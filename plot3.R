source("commons.R")

## Draw plot3 for cleaned household power consumption data (hpc_data)
draw_plot3 <- function(hpc_data, bty="o") {
  Sys.setlocale("LC_ALL","English")
  plot(x=hpc_data$Datetime, y=hpc_data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(x=hpc_data$Datetime, y=hpc_data$Sub_metering_2, col="red")
  lines(x=hpc_data$Datetime, y=hpc_data$Sub_metering_3, col="blue")
  legend("topright", bty=bty, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=c(1,1,1))
}

## Reads household power consumption data from hpc_file_name and draw plot3
read_and_draw_plot3 <- function(hpc_file_name="household_power_consumption.txt") {
  read_hpc_data_and_draw_plot(hpc_file_name, draw_plot3, "plot3.png")
}