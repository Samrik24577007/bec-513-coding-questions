import sys
import pandas as pd
n=int(sys.argv[1])
l=list(pd.read_csv("data/first_hundred_numbers.tsv",sep="\t",header=None)[0])
l1=sorted(l)
n1=int(len(l1)/n)
df_dict={}
for i in range(1,n+1):
	df_dict["q" + str(i)]=[l1[(i-1)*n1],l1[i*n1 -1]]


for line in sys.stdin:
	num=int(line.strip())
	for key in df_dict:
		a=df_dict[key][0]
		b=df_dict[key][1]
		if num in range(a,b+1):
			print(str(num) +"\t" + key + "\t" + key + " " + "(" + str(a) + " " + str(b) + "]" )
