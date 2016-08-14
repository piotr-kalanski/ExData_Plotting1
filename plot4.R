source("commons.R")
source("plot2.R")
source("plot3.R")

## Draw plot4 for cleaned household power consumption data (hpc_data)
draw_plot4 <- function(hpc_data) {
  Sys.setlocale("LC_ALL","English")
  par(mfcol=c(2,2))
  draw_plot2(hpc_data)
  draw_plot3(hpc_data, bty="n")
  with(hpc_data, plot(x=Datetime, y=Voltage, type="l", xlab="datetime"))
  with(hpc_data, plot(x=Datetime, y=Global_reactive_power, type="l", xlab="datetime"))
}

## Reads household power consumption data from hpc_file_name and draw plot4
read_and_draw_plot4 <- function(hpc_file_name="household_power_consumption.txt") {
  read_hpc_data_and_draw_plot(hpc_file_name, draw_plot4, "plot4.png")
}