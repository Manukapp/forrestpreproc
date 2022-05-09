#!/bin/sh
for i in {01..21}; do
fsl5.0-applywarp --premat=$0 -i $1 -o ./transforms/sub-"$i"/sub"$i"_MNIsymbrain.nii.gz -r $2 -w $3
fsl5.0-slicetimer -i ./transforms/sub-"$i"/sub"$i"_MNIsymbrain.nii.gz -o ./outputs/sub"$i"_STC_MNIsymbrain.nii.gz -r 2
datalad save -m "sub-$i cont-MNIsym brain parcellation"; done
