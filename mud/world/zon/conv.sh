#!/bin/bash

rm -rfv utf8
mkdir utf8

for i in `ls *.zon`
do 
	iconv -fkoi8-r -tutf8 $i > utf8/$i
done

