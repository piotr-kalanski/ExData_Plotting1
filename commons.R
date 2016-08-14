## Common functions for programming assignment ExData_Plotting1

## Reads household power consumption data for dates 2007-02-01 and 2007-02-02
read_sample_hpc_data <- function(file_name) {
  hpc_data_raw <- read.table(file_name, sep=";", na.strings = "?", dec = ".", header = TRUE)
  hpc_data_raw[hpc_data_raw$Date == "1/2/2007" | hpc_data_raw$Date == "2/2/2007", ]
}

## Cleans household power consumption data
clean_hpc_data <- function(hpc_data_raw) {
  hpc_data_raw$Datetime <- strptime(paste(hpc_data_raw$Date, hpc_data_raw$Time), format="%d/%m/%Y %H:%M:%S")
  hpc_data_raw
}

## Reads and cleans household power consumption data
read_and_clean_hpc_data <- function(file_name = "household_power_consumption.txt") {
  hpc_data_raw <- read_sample_hpc_data(file_name)
  clean_hpc_data(hpc_data_raw)
}

## Draw plot for household power consumption data (hpc_data) using "draw_plot" function and save result to png file with name plot_file_name
draw_and_save_plot_to_png_file <- function(hpc_data, draw_plot, plot_file_name) {
  png(filename=plot_file_name, width=480, height=480)
  draw_plot(hpc_data)
  dev.off()
}

## Reads household power consumption data and draw one of plots using function "draw_plot"
read_hpc_data_and_draw_plot <- function(hpc_file_name, draw_plot, plot_file_name) {
  hpc_data <- read_and_clean_hpc_data(hpc_file_name)
  draw_and_save_plot_to_png_file(hpc_data, draw_plot, plot_file_name)
}