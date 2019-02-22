#!/bin/bash 
find ./ -name "M.*" -exec grep -H '... ... .. ..:..:.. ....<' {} \; > timedata_1m
cat timedata_1m | sed 's/^.\///g' | sed 's/:.*時間<\/span><span class="article-meta-value">/ /g' | sed 's/<\/span><\/div>.*//g' > timedata_1
