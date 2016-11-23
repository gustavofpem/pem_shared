#!/bin/bash

#IFPB
#Projetos para Excelência em Microeletrônica (PEM)
#Gustavo Gonçalves de Sousa Forte
#Novembro, 2016

page=$1
if [ -s "traverse.dat" ] ; then
	rm traverse.dat
fi
if [ -s "traverse2.dat" ] ; then
	rm traverse2.dat
fi
if [ -s "reject.dat" ] ; then
	rm reject.dat
fi
if [ -s "traverse.errors" ] ; then
	rm traverse.errors
fi

page="$(sed s@^https\:\/\/@http\:\/\/@ <<< $page)"
if grep -qv "^http\:\/\/" <<< "$page" ; then
	page="http://"$page
fi
echo -n "Searching link: "
echo $page

lynx -traversal -accept_all_cookies "$page" >> /dev/null
echo "Broken links: "
if [ -s "traverse.errors" ] ; then
	cat traverse.errors | sed "s/\s.*$//"
else
	echo "None"
fi
