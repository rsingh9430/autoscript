#!/bin/sh

dir=~/Recon/$1/$2;
mkdir -p $dir

echo "[+] Starting passive subdomain recon..."
subfinder -d $2 > $dir/$2_unfilter_subdomains;
assetfinder --subs-only $2 >> $dir/$2_unfilter_subdomains;
echo"[+] wait for amass passive recon"
amass enum -passive -d $2 -o $dir/$2_unfilter_subdomains;

echo "[+} Starting active subdomain recon...."
amass enum -active -d $2 -brute -w /opt/wordlists/assetnotes/data/manual/2m-subdomains.txt -o $dir/$2_unfilter_subdomains;

echo "[+] Shorting unqiue subdomains...."
cat $dir/$2_unfilter_subdomains | sort -u > $dir/$2_subdomains;

echo "[+] Checking for alive domains..."
cat $dir/$2_subdomains | httprobe --prefer-https -c 50 >> $dir/$2_alive ;


#learn how to take parameter in bash
#learn how to take parmater with value like -u = google.com``
