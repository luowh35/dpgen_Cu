#!bin/bash
a="$(find work/*/*/*ed | wc -l)"
b="$(find work/*/*/input* | wc -l)"
((c=$a*100/$b))
str=""
i=1
while [ $i -le $c ]
	do
		str+="|"
		let i=i+1
		done
printf "%-10s %-10s\n" finished total
echo "$(find work/*/*/*ed | wc -l) $(find work/*/*/input* | wc -l)" | awk '{printf "%-10.0f %-10.0f\n",$1,$2}'
printf "%-10s" progress
printf "|%-100s| " "$str"
echo "$(find work/*/*/*ed | wc -l) $(find work/*/*/input* | wc -l)" | awk '{printf "%.2f%%\n",$1/($2)*100}'


