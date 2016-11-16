#!/bin/bash
 
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

lynx -traversal -accept_all_cookies "$page" >> /dev/null
echo "Broken links: "
if [ -s "traverse.errors" ] ; then
	cat traverse.errors | sed "s/\s.*$//"
else
	echo "None"
fi
