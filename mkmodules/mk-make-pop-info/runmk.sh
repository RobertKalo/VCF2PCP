#!/usr/bin/env bash

## find every vcf file
#find: -L option to include symlinks
find -L . \
  -type f \
  -name "*.LD.maf_filtered.fam" \
| sed 's#.fam#.autosomal.popinfo.txt#' \
| xargs mk
