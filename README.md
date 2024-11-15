# Q1
We read the file in the first argument that contains all the patterns to find and store its elements in a list. We read a line as a string and check if any patterns from the list are in the line, if true then prints the line. We seperately print the first line that is header.

## in the command line we run
"zcat q1_data.tsv.gz | python Assignment1.py data/to_select.tsv"
output will be saved in outputs/output_p1.tsv

#Q2
We read the output filename, x_label,y_label, title from the command line argument. We create three empty vector for x,y coordinate and category. While readind each line, we split it and append the corresponding value into corresponding vector sequencially. We create a dataframe using the three vectors. Then plot the dataframe using ggplot2.

## in the command line
first activate R environment
"cat data/q2_data.tsv | Rscript ploy_q2.R "outputs/different_clusters.png" "Relative from center [bp]" "Enrichment over Mean" "MNase fragment profile" "
The output file will be saved in outputs folder as different_clusters.png

#Q3
It takes the file containing list of files as argument. It reads the files inside it and store it in list. A function is created that reads file as variable and stores the data into variable read_data. Using lapply each dataframe is stored as a list element into data_list. Reduce and inner_join iteratively merges each dataframe by their first column that has a header "X1". The output is given as a standard output.

## in the command line
First activate R environment
"Rscript join_list_of_files.R data/list_q3.tsv > outputs/join_output.tsv"

#Q4
 It takes the number of quantiles as input and also we read the data beforehand and store them into list. Next sort them to store in another list. We calculate the number of element in each quantil. We calculated the range of the quantile by taking the first(lowest) and last number(highest) in that quantile using their index from the sorted list and store it in dictionary . Then we read each number from the file check it is in which range.

## in the command line
"cat data/first_hundred_numbers.tsv | python group_in_quantiles.py 4 > outputs/q4_output.tsv"

#Q5
We specify the output filename(eps format). Then we set color palette to color different values differently. Then unset grid and colour bar for simplify and better picture. Set view map sets the plot view to a top-down perspective. Then set aspect ratio and then it plots the data 'demo_data.tsv' as matrix and creates heatmap like visualization.

## in the command line
 
#We could not upload the big_data.tsv.gz
#First we have to unzip it,
"gunzip big_data.tsv.gz"
#Then cut out the first column and take the rest into another file "data/demo_data.tsv"
"cut --complement -f1 data/big_data.tsv > data/demo_data.tsv"
#Then install gnuplot using
pip install gnuplot
#For plotting
"gnuplot ploy.gp"
#This will create "optimised_matrix.eps" in outputs folder , To convert it into pdf format and open it
"ps2pdf outputs/optimised_matrix.eps outputs/optimised_matrix.pdf"
"xdg-open outputs/optimised_matrix.pdf"
