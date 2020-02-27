#!/usr/bin/env bash
## This small script runs a module test with the sample data

###
## environment variable setting
export PLINK="plink"
export LD="0.8"
export WINDOW="2000"
export MAF="0.05"
###

echo "[>..] test running this module with data in test/data"
## Remove old test results, if any; then create test/reults dir
rm -rf test/results
mkdir -p test/results
echo "[>>.] results will be created in test/results"*.vcf
## Execute runmk.sh, it will find the basic example in test/data
## Move results from test/data to test/results
## results files are *.bed, *.bim & *.fam without LD and maf filtered.
## Also, a vcf simplified and when there is no rsID, an ID has been assigned.
bash runmk.sh \
&& mv test/data/*.maf_filtered.* test/data/*.vcf test/data/*.converted.* test/results/ \
&& echo "[>>>] Module Test Successful"
