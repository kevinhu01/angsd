#!/bin/bash
#SBATCH --job-name=featureCounts
#SBATCH --output=featureCounts.log
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=6:00:00

featureCounts -T 8 -s 2 -p -t transcript -g gene_id --countReadPairs -a referenceGenome/hg38.knownGene.gtf -o ./counts_matrix.txt LOAD/final_alignments/*.bam WT/final_alignments/*.bam
