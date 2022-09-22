#!/bin/bash
declare -A shells

for i in $(cut -d: -f 7 /etc/passwd)
do
    let shells[$i]++
done

USADO=($(xargs -n 1 <<< ${!shells[@]} | sort -nr | head -1))
NUM=($(xargs -n 1 <<< ${shells[@]} | sort -nr | head -1))
echo "$USADO -> $NUM usuários"


