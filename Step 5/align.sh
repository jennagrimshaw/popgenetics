# This takes 1-2 days to run. 
# Make sure you edit the <directory> and <genomename>
# Check to see what the ending of your filenames are. 
# So in the popmap.txt file you should have a list of your samples listed. 
# You can use any naming scheme.
# Example: 
# Mysample1
# Mysample2

# Then your reads should have two files for each indiviudal 
# When you have paired-end reads.
# Mysample1.1.fq.gz
# Mysample1.2.fq.gz
# Mysample2.1.fq.gz
# Mysample2.2.fq.gz

# The previous step of afterQC will add "good"
# Mysample1.good.1.fq.gz
# Mysample1.good.2.fq.gz
# Mysample2.good.1.fq.gz
# Mysample2.good.2.fq.gz

# These are the files used in the script below.
# you will need to list the ending of good read 1 and good read 2

module load  gcc/9.2.0 bwa samtools

DIR="<directory>/reads/good"
GENOME="/<directory>/genome/<genomename>.fa"
READLIST="/<directory>/info/popmap.txt"

cd $DIR

#Aligns the higher quality reads to the reference genome
for file in $(cat $READLIST)
do bwa mem -M -t 8 $GENOME  ${file}.1.good.fq.gz ${file}.2.good.fq.gz > ${file}.sam
done

#Convert sam file to bam file
for file in $(cat $READLIST)
do samtools view -bS ${file}.sam > ${file}.bam
done

for file in $(cat $READLIST)
do samtools sort ${file}.bam > ${file}_sorted.bam
done

cp *sorted.bam /<directory>/after30/.
