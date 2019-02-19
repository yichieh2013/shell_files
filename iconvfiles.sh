dir=/pttdir/cc0219
for name in [` ls "${dir}" `]
do `iconv -f BIG-5 -t UTF-8 ${name} -o utf${name}`
done
