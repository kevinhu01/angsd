#!/bin/bash
#SBATCH --job-name=qorts_WT
#SBATCH --output=qorts_WT.log
#SBATCH --nodes=1
#SBATCH --ntasks=8
#SBATCH --mem=40G
#SBATCH --time=08:00:00

for dir in SRR192434*; do
java -Xmx20G -jar /athena/angsd/scratch/mef3005/share/envs/qorts/share/qorts-1.3.6-1/QoRTs.jar QC \
--stranded --coordSorted \
${dir}/alignments/${dir}.Aligned.sortedByCoord.out.bam \
/athena/angsd/scratch/klh4012/work/Project/referenceGenome/refgene/hg38.refGene.gtf \
${dir}/qorts_new
done
