#!/bin/bash 
find ./ -name "M.*" -exec grep -H '... ... .. ..:..:.. ....<' {} \; > timedata
cat timedata | sed 's/^.\///g' | sed 's/:.*時間<\/span><span class="article-meta-value">/ /g' | sed 's/<\/span><\/div>.*/ /g' > timedata1
