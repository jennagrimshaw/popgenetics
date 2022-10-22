# AfterQC requires Python 2
source /home/jenjense/miniconda3/bin/activate py27

DIR="<directory>/reads/"
READLIST="<directory>/info/popmap.txt"

echo $DIR
echo $READLIST

cd $DIR

for file in $(cat $READLIST)
do	echo $file
                python /home/jenjense/AfterQC/after.py -1 ${file}.1.fastq.gz -2 ${file}.2.fastq.gz -q 30
done
