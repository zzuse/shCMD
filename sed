# change empty lines to non-empty lines
# ASCII 0x1E represent "^^"
sed  's/^$/\x1E/' $logfile > $logfile.tmp

# make use of the trace record delimiter to form empty line
sed -i 's/\x01//'  $logfile.tmp

#http://sed.sourceforge.net/sed1line.txt
 # print paragraph if it contains AAA (blank lines separate paragraphs)
 # HHsed v1.5 must insert a 'G;' after 'x;' in the next 3 scripts below
 sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;'

# http://www.thegeekstuff.com/2009/12/unix-sed-tutorial-7-examples-for-sed-hold-and-pattern-buffer-operations/
 sed -e '/./{H;$!d;}' -e 'x;/Administration/!d' thegeekstuff.txt

 # print paragraph if it contains AAA and BBB and CCC (in any order)
 sed -e '/./{H;$!d;}' -e 'x;/AAA/!d;/BBB/!d;/CCC/!d'

 # print paragraph if it contains AAA or BBB or CCC
 sed -e '/./{H;$!d;}' -e 'x;/AAA/b' -e '/BBB/b' -e '/CCC/b' -e d
 gsed   '/./{H;$!d;};x;/AAA\|BBB\|CCC/b;d'         # GNU sed only
