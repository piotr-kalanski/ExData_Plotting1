source("commons.R")

## Draw plot2 for cleaned household power consumption data (hpc_data)
draw_plot2 <- function(hpc_data) {
  Sys.setlocale("LC_ALL","English")
  plot(x=hpc_data$Datetime, y=hpc_data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
}

## Reads household power consumption data from hpc_file_name and draw plot2
read_and_draw_plot2 <- function(hpc_file_name="household_power_consumption.txt") {
  read_hpc_data_and_draw_plot(hpc_file_name, draw_plot2, "plot2.png")
}