#!/usr/bin/env bash

set -eu

# Use a for loop to iterate
for filename in sample*.bam
do
    # Useful message so we know where we're up to
    echo "Processing: ${filename}"

    # Count the number of records using samtools view
    # Store the output from that command into a variable
    alignments=$(samtools view -c "${filename}")

    # Return the filename and the number of records back to the user
    echo "Number of alignments in ${filename}: ${alignments}"
done