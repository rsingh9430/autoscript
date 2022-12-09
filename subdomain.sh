#!/bin/sh

dir=~/Recon/$1/$2;
mkdir -p $dir

subfinder -d $2 > $dir/$2_unfilter_subdomains;
assetfinder --subs-only $2 >> $dir/$2_unfilter_subdomains;

amass enum -d $2 >> $dir/$2_unfilter_subdomains;
cat $dir/$2_unfilter_subdomains | sort -u > $dir/$2_subdomains;

#learn how to take parameter in bash
#learn how to take parmater with value like -u = google.com``
