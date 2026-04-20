#!/bin/bash
#SBATCH --job-name=featureCounts
#SBATCH --output=featureCounts.log
#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --time=6:00:00

featureCounts -T 6 -s 2 -p -t exon -g gene_id --countReadPairs -a referenceGenome/hg38.knownGene.gtf -o ./counts_data.txt LOAD/final_alignments/*.bam WT/final_alignments/*.bam
