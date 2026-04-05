#!/bin/bash
#SBATCH --job-name=star_LOAD
#SBATCH --output=star_LOAD.log
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=40G
#SBATCH --time=02:00:00

for dir in SRR192434*; do
STAR --runMode alignReads \
     --runThreadN 8 \
     --genomeDir /athena/angsd/scratch/klh4012/work/Project/referenceGenome/ucsc_hg38_index \
     --readFilesIn ${dir}/${dir}_1_val_1.fq.gz ${dir}/${dir}_2_val_2.fq.gz \
     --readFilesCommand zcat \
     --sjdbOverhang 75 \
     --outSAMunmapped Within \
     --outSAMtype BAM SortedByCoordinate \
     --outFileNamePrefix ${dir}/alignments/${dir}.
done
