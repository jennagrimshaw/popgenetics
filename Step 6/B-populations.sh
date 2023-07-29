
module load gcc/10.1.0 stacks

DIR="/<directory>/populations/"
RUNNAME="pop-oneSNP-R80"
POPMAP="/<directory>/info/popmap.txt"
SORTED="/<directory/stacked"

cd $DIR
mkdir $RUNNAME

populations -P $SORTED --popmap $POPMAP -O ./$RUNNAME -R .80 -t 12  --write-single-snp --vcf --structure --hwe --fstats --fasta-samples --genepop --fasta-loci  --ordered-export --phylip --smooth --fasta-samples-raw
