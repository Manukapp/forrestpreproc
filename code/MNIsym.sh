#!/bin/sh
for i in seq '01..21'; do
    xfm1="./inputs/studyforrest-data-templatetransforms/templates/grpbold3Tp2/xfm/mni2tmpl_12dof.mat"
    atlas="./inputs/MNI-prob-2mm.nii.gz"
    sub="./inputs/studyforrest-data-templatetransforms/sub-"$i"/bold3Tp2/head.nii.gz"
    xfm2="./inputs/studyforrest-data-templatetransforms/sub-"$i"/bold3Tp2/in_grpbold3Tp2/tmpl2subj_warp.nii.gz"
    fsl5.0-applywarp --premat=xfm1 -i atlas -o ./transforms/sub-"$i"/sub"$i"_MNIsymbrain.nii.gz -r sub -w xfm2
    fsl5.0-slicetimer -i ./transforms/sub-"$i"/sub"$i"_MNIsymbrain.nii.gz -o ./outputs/sub"$i"_STC_MNIsymbrain.nii.gz -r 2; done
#    datalad save -m "sub-$i cont-MNIsym brain parcellation"
