#!/bin/bash
 
page=$1
 
lynx -traversal "$page" >> ./tmp.txt
echo "Broken links: "
cat traverse.errors | sed "s/\s.*$//"
rm ./tmp.txt
