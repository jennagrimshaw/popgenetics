# AfterQC requires Python 2
source /home/jenjense/miniconda3/bin/activate py27

DIR="<directory>"
READLIST=$DIR/info/popmap.txt

echo $DIR
echo $READLIST

cd $DIR/reads

for file in $(awk '{print $1}' $READLIST)
do echo $file
     python /home/jenjense/AfterQC/after.py -1 ${file}_R1.fastq.gz -2 ${file}_R2.fastq.gz -q 30
done

