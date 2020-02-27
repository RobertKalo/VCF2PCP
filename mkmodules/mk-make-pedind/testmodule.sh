#!/usr/bin/env bash
## This small script runs a module test with the sample data

###
## environment variable setting
export TSV="./test/reference/samples.txt"
###

echo "[>..] test running this module with data in test/data"
## Remove old test results, if any; then create test/reults dir
rm -rf test/results
mkdir -p test/results
echo "[>>.] results will be created in test/results"
## Execute runmk.sh, it will find the basic example in test/data
## Move results from test/data to test/results
## results files are *.bed, *.bim & *.fam
bash runmk.sh \
&& mv test/data/*.pedind test/results/  && rm test/data/*.tmp \
&& echo "[>>>] Module Test Successful"
