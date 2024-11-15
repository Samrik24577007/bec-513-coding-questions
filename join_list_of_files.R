library(tidyverse)

args <- commandArgs(trailingOnly = TRUE)

files_list <- readLines(args[1])

read_data <- function(filename) {
	data <- read_tsv(filename,col_names=FALSE,show_col_types=FALSE)
	
	return(data)
}
data_list <- lapply(files_list,read_data)


merged_data <- reduce(data_list,function(x,y) inner_join(x,y,by="X1"))
write_tsv(merged_data, stdout(),col_names=FALSE)
