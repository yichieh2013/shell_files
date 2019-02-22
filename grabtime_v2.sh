#!/bin/bash 
find ./ -name "M.*" -exec grep -H '時間</span><span class="article-meta-value">' {} \; > timedata_2m
cat timedata_2m | sed 's/^.\///g' | sed 's/:.*時間<\/span><span class="article-meta-value">/ /g' | sed 's/<\/span><\/div>.*//g' |  grep -v '(' > timedata_2
