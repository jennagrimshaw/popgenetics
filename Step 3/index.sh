
module load  gcc/9.2.0 bwa samtools

GENOME=<directory>/genome.fa

bwa index -a bwtsw $GENOME

samtools faidx $GENOME
