#!/bin/bash

## more first_9.pdb | grep -n -e END -e MODEL | awk '{print $1}' | tr "\n" "," | sed 's/:MODEL//g; s/:ENDMDL,/p\>\$i.pdb /g'  | tr " " "\n" | sed "s/^/sed -n  \'/g; s/>/\' first_9.pdb >/g" > extract.sh
##

sed -n  '2,1552p' first_9.pdb >1.pdb
sed -n  '1554,3104p' first_9.pdb >2.pdb
sed -n  '3106,4656p' first_9.pdb >3.pdb
sed -n  '4658,6208p' first_9.pdb >4.pdb
sed -n  '6210,7760p' first_9.pdb >5.pdb
sed -n  '7762,9312p' first_9.pdb >6.pdb
sed -n  '9314,10864p' first_9.pdb >7.pdb
sed -n  '10866,12416p' first_9.pdb >8.pdb
sed -n  '12418,13968p' first_9.pdb >9.pdb
