#!/usr/bin/env bash

set -euxo pipefail

# Use a for loop to produce three example data files
# Use seq to generate numeric intervals (start interval end)
for start in `seq 10000 1000 12000`; 
do 
	# Chromosome number
	chr=1

	# If start is the beginning of the range, calculate end as start + 1000
	end=$((start+1000))
	
	# Build an informative output filename containing the data range
	filename="sample_${start}_${end}.bam"

	# Set the location of the example file we want to subset (remote ftp)
	data_source=ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/phase3/data/HG00100/alignment/HG00100.mapped.ILLUMINA.bwa.GBR.low_coverage.20130415.bam.cram

	# Return something meaningful to the user
	echo "Getting subset for ${filename} from: ${start} to: ${end}"

	# Get a subset of our data using samtools
	samtools view -h -b -o "${filename}" "${data_source}" "${chr}:${start}-${end}"
done
