
DIR=<directory>

cd $DIR

INFO="<directory>ist.txt"

echo $INFO

while IFS= read -r line; do
    cut -c -9 >> temp-popmap.txt
done < $INFO

uniq temp-popmap.txt popmap.txt
