#!/bin/sh

#step 1) grep number diffs from composite report
NUMBER=`grep "that have diff" /u02/OIDCMPREC/PHX-IAD-GROUPS/*rpt |awk -F: {'print $3}'`

#step 2) if number is over 100 for password diffs int-ext prod -then CHECK
if [ $NUMBER -gt 50 ]
then
echo "em_result=CHECK"
else
echo "em_result=DONE"
fi

