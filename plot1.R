source("commons.R")

## Draw plot1 for cleaned household power consumption data (hpc_data)
draw_plot1 <- function(hpc_data) {
  hist(hpc_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
}

## Reads household power consumption data from hpc_file_name and draw plot1
read_and_draw_plot1 <- function(hpc_file_name="household_power_consumption.txt") {
  read_hpc_data_and_draw_plot(hpc_file_name, draw_plot1, "plot1.png")
}