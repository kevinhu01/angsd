#!/bin/bash
#SBATCH --job-name=star_index
#SBATCH --output=star_index.log
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=40G
#SBATCH --time=10:00:00
STAR --runMode genomeGenerate --runThreadN 8 --genomeDir ./ucsc_hg38_index --genomeFastaFiles hg38.fa --sjdbGTFfile hg38.knownGene.gtf --sjdbOverhang 75
