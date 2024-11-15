set terminal postscript eps size 6,6 font 'Arial,12'
set output "outputs/optimised_matrix.eps"
set palette defined (0 'white', 0.25 'red', 0.5 'grey', 0.75 'yellow', 1 'green')



unset grid
unset colorbox
set border linewidth 1.5

set view map
set size ratio -0.03
plot 'data/demo_data.tsv' matrix with image
