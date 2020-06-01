#!/usr/bin/env bash

cd "${0%/*}"

# check for rst2man
_() { command -v "$1"; }

{ r2m=$(_ rst2man.py) || r2m=$(_ rst2man); } || {
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
        # trim down manpages
        gzip -9 > "${array[$rst]}" < <(
            while IFS= read -r line; do
                [[ $line =~ ^'.\"' ]] ||
                    printf '%s\n' "$line"
            done < <("$r2m" "$rst")
        )
    }
} |&
    while IFS= read -r line; do
        [[ $line =~ ^'+++' ]] &&
            printf '%s\n' "$line"
    done

:
