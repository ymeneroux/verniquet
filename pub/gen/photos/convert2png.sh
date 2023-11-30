FILES="*.pdf"
for f in $FILES
do
	pdftocairo $f -png
	i=$((${#f}-1))
	mv ${f:0:$i-3}-1.png ${f:0:$i-3}.png
	echo  $f "->" ${f:0:$i-3}.png
done




