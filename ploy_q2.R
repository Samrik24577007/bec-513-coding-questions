library(ggplot2)
args <- commandArgs(trailingOnly=TRUE)
fname=args[1]
x_label=args[2]
y_label=args[3]
plot_title=args[4]
input <- readLines(con="stdin")
x_vals <- numeric()
y_vals <- numeric()
categories <- character()

for (line in input) {
	x_y_cat <- strsplit(line, "\t")[[1]]
	x_vals <- c(x_vals, as.numeric(x_y_cat[1]))
	y_vals <- c(y_vals, as.numeric(x_y_cat[2]))
	categories <- c(categories, x_y_cat[3])
}

data <- data.frame(x=x_vals, y=y_vals,cat=categories)

p <- ggplot(data, aes(x=x,y=y, color=categories)) + geom_line()  + labs(title=plot_title, x=x_label,y=y_label) + theme_light()
ggsave(fname, plot=p,width=8, height=6)

