#!/bin/sh

while read -r line;
do
    sh subdomain.sh $line;
done < scope
