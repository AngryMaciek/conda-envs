#!/usr/bin/env bash

###############################################################################
#
#   AUTHOR: Maciej_Bak
#   AFFILIATION: Swiss_Institute_of_Bioinformatics
#   CONTACT: wsciekly.maciek@gmail.com
#   CREATED: 13-03-2020
#   LICENSE: MIT
#
###############################################################################

CWD="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
conda env create --file $CWD/packages.yaml -p $CWD/env --quiet

# install the dependancies for LaTeX
source ~/miniconda3/etc/profile.d/conda.sh
conda activate $CWD/env
R -e "library('tinytex'); tinytex::install_tinytex()"
