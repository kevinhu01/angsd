#!/bin/bash
#SBATCH --job-name=trim_LOAD
#SBATCH --output=trim_LOAD.log
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=40G
#SBATCH --time=02:00:00

for dir in SRR192434*; do
trim_galore --paired --illumina --cores 6 --length 35 "$dir"/"$dir"_1.fastq.gz "$dir"/"$dir"_2.fastq.gz
done
