# popgenetics

This is a pipeline for working through a population genetics project using RADseq data. 
You will need access to fastq files and reference genome file. 

# The steps will be as following:   
Step 1: Create directory - list of folders needed.
Step 2: Make list files - one file with all sample names and one file with all sample names and locations
Step 3: AfterQC - Filter through raw reads for quality control
Step 4: Index genome - using bwa and samtools
Step 5: Align reads to genome - using bwa and samtools
Step 6: Stack sorted bamfiles - using gstacks from Stacks (Catchen)
Step 7: Run populations - using populations from Stacks (Catchen)
Step 8: Run fastStructure
Step 9: Run Structure
Step 10: Run adegenet/hierfstat - using R

# Step 1: Create directory
- run 1-createdir.sh

# Step 2: Make list files
- run 2A-list.sh
- run 2B-popmap.sh
