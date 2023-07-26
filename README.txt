# popgenetics

This is a pipeline for working through a population genetics project using RADseq data. 
You will need access to fastq files and reference genome file. 

# The steps will be as following:   
Step 1: Create directory - list of folders needed.
Step 2: Make list files - one file with all sample names and one file with all sample names and locations
Step 3: Index genome - using bwa and samtools
Step 4: AfterQC - Filter through raw reads for quality control
Step 5: Align reads to genome - using bwa and samtools
Step 6: Stack sorted bamfiles - using gstacks from Stacks (Catchen)
Step 7: Run populations - using populations from Stacks (Catchen)
Step 8: Run fastStructure
Step 9: Run Structure
Step 10: Run adegenet/hierfstat - using R

# Step 1: Create directory
- run 1-createdir.sh

# Step 2: Make list files
- run popmap.sh

# Step 3: Index genome
- run index.sh

# Step 4: Quality control
- run after30.sh
- move all files from reads/good/* to after30/.

# Step 5: Align good reads
- run align.sh
* this does try to use the 2nd column of the popmap (locations) and make files out of them which is stupid and annoying. 
* This may take a full day to run

# Step 6: Stacks
- run stacks.sh
* if you get an error of a malformed population map, this may be due to weird hidden characters.  The output will list which line is producing the error.  The proper format is sample ID followed by a tab and then the population designation:
Sample 1  Pop
If it looks like it is in proper format, delete and retype it and that should remove any weird hidden characters. 
* This takes a couple hours to run
- run populations.sh
