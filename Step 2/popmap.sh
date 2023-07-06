
#################################
# Create popmap
################################

################################
# !!!!! IMPORTANT !!!!

# 1. Edit the working directory
# 2. Edit characters to delete
###############################

# Edit your working directory
DIR=<directory>
cd $DIR

# Create list of reads
ls reads/ > info/readlist.txt

# Save readlist file as variable
READLIST="info/readlist.txt"
echo $READLIST

# Create temp file of reads deleting file extension characters
# Example 10_R1.fastq.gz --> 10

while read  p; do
   echo "$p" | sed 's/_.*//' >> temp.txt
done < $READLIST

# Remove duplicates (R1 & R2) and delete temp file
uniq temp.txt info/popmap.txt
rm temp.txt
