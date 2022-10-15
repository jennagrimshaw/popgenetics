
#!/bin/bash
#SBATCH --chdir=./
#SBATCH --job-name=CREATEDIR
#SBATCH --output=%x.o%j
#SBATCH --error=%x.o%j
#SBATCH --partition nocona
#SBATCH --nodes=1
#SBATCH --ntasks=1

mkdir info genome reads scripts populations stacked after30
