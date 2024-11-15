import sys
import pandas as pd

to_select=list(pd.read_csv(sys.argv[1], sep="\t",header=None)[0])
fname=sys.argv[2]
f=open(fname,"w")
i=0
for line in sys.stdin:
	if i==0:
		f.write(line)
		i=1
	for thing in to_select:
		if thing in line:
			f.write(line)
f.close()
			
