#!/usr/bin/env bash

cd "${0%/*}"

# check for rst2man
type rst2man.py &> /dev/null || {
    echo 'error : install docutils first' >&2
    exit 1
}

declare -A array

# build list of files to convert
for rst in rst/*.rst; {
    man=${rst##*/}
    man=man/${man%.rst}.1.gz

    [[ -e $man ]] && {
        {
            read -r a
            read -r b
        } < \
            <(stat -c '%Y' -- "$rst" "$man")

        ((a > b)) || continue
    }

    array[$rst]=$man
}

mkdir -p man

{
    set -x

    for rst in "${!array[@]}"; {
        rst2man.py "$rst" | gzip > "${array[$rst]}"
    }
} |&
    while IFS= read -r line; do
        [[ $line =~ '+ 'for ]] ||
            printf '%s\n' "$line"
    done
