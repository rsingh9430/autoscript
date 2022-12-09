#!/bin/sh

dir=~/Recon/$1/$2
tempfile=$dir'/'$2'_direnum'
mkdir $tempfile

dirsearch -l $dir/$2_alive -t 300 -i 200,201,202,203,204,301,302,303,304 -o $tempfile

#cat $dir/$2_alive | waybackurl
