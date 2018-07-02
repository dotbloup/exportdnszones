#!/bin/bash
ls *.db > domains.list
if [ -f export.list ]; then
rm export.list
fi
for domain in `cat domains.list`; do
domain1="${domain::-3}"
echo "zone \"$domain1\" { type slave; file \"slaves/$domain\"; masters { XX.XX.26.201; }; };" >> export.list
done

