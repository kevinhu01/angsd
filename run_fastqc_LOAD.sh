#!/bin/bash
#SBATCH --job-name=fastqc_LOAD
#SBATCH --output=fastqc_LOAD.log
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=40G
#SBATCH --time=02:00:00

for dir in SRR192434*; do
fastqc -t 6 "$dir"/*_1.fastq.gz "$dir"/*_2.fastq.gz
done
