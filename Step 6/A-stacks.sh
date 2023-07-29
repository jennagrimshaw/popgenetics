module load gcc/10.1.0 stacks

INPUT="/<directory>/after30"
READLIST="/<directory>/info/popmap.txt"
OUTPUT="/<directory>/usda/stacked"

gstacks -I $INPUT -S _sorted.bam -M $READLIST -O $OUTPUT -t 12 --details
