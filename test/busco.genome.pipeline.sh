#!/bin/bash
# Athor: Jianzuoyi
# Version: 1.0	Date: 2017-10-25

export BUSCO_CONFIG_FILE=/its1/GB_BT2/jianzuoyi/pipeline/biosoft/01.Assembly/BUSCO/busco.ini
export AUGUSTUS_CONFIG_PATH=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/pkgs/augustus-3.2.2-boost1.61_3/config
export PATH=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin:/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin:$PATH
BUSCO=/its1/GB_BT2/jianzuoyi/pipeline/biosoft/01.Assembly/BUSCO/bin/busco/scripts/run_BUSCO.py

Assembly=/its1/GB_BT2/jianzuoyi/workspace/barley/modules/Quiver/all_p_arrow.fasta
OUTBASE=all_p_arrow.fasta.busco

python $BUSCO -i $Assembly -o $OUTBASE -l /its1/GB_BT2/jianzuoyi/database/busco/embryophyta_odb9 -m genome -c 1 -f -r
