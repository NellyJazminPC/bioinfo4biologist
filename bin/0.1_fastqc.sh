#!/bin/bash 
#############################
####         FASTQC      ####
#############################
### Extra
# You are in the bin/ directory
# The directory of the fastqc program is FastQC/fastqc
# The input files (.fastq.gz) are in ../data/raw/


# Create the output directory

mkdir ../data/1.0.quality_analysis

# Declare an array of string with type
declare -a StringArray=(CR_01_S115 CR_02_S127 CR_03_S139 CR_04_S151 CR_05_S163 CR_06_S175 
CR_07_S186 CR_08_S104 CR_09_S116 CR_10_S128 CY_01_S170 CY_02_S181 CY_03_S99 CY_04_S111 
CY_05_S123 CY_06_S135 CY_07_S147 CY_08_S159 CY_09_S171 CY_10_S182 CZ_01_S100 CZ_02_S112 
CZ_03_S124 CZ_04_S136 CZ_05_S148 CZ_06_S160 CZ_07_S172 CZ_08_S183 CZ_09_S101 CZ_10_S113 LS_01_S140 
LS_02_S152 LS_03_S164 LS_04_S176 MB_01_S95 MB_02_S107 MB_03_S119 MB_04_S131 MB_05_S143 MB_06_S155 
MB_07_S167 MB_08_S178 MB_09_S96 MB_10_S108 MC_01_S120 MC_02_S132 MC_03_S144 MC_04_S156 MC_05_S168 
MC_06_S179 MC_07_S97 MC_08_S109 MC_09_S121 MC_10_S133 MT_01_S145 MT_02_S157 MT_03_S169 MT_04_S180 
MT_05_S98 MT_06_S110 MT_07_S122 MT_08_S134 MT_09_S146 MT_10_S158 IT_01_S125 IT_02_S137 IT_03_S149 
PZ_01_S161 PZ_02_S173 PZ_03_S184 PZ_04_S102 PZ_05_S114 PZ_06_S126 PZ_07_S138 PZ_08_S150 PZ_09_S162 
PZ_10_S174 PZ_11_S185 PZ_12_S103)

# Iterate the string array using a for loop

for i in ${StringArray[@]}; do

    ./FastQC/fastqc ../data/raw/$i*.fastq.gz -o ../data/1.0.quality_analysis ;

done


