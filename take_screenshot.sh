#!/bin/sh

dir=~/Recon/$1/$2
file=$dir'/'$2'_alive'
python3 ~/Tools/EyeWitness/Python/EyeWitness.py --web -f $file -d $dir/screenshot/ --no-prompt  --timeout 30
echo $file
