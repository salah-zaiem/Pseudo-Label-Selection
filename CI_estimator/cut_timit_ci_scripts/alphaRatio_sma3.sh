#!/bin/zsh
. /cal/softs/anaconda/anaconda3/etc/profile.d/conda.sh
conda activate salah
cd diagnostic_measures/svcca/
python timit_HCIS.py ../../timit_clean/good_cut_melfs/ ../../workers_extraction/phone_level_gemaps_means_timit alphaRatio_sma3 cut_timit_downsampling10 cut_timit_downsampling10
