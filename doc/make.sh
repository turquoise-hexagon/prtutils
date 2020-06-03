#!/usr/bin/env bash

cd "${0%/*}"

# check for rst2man
_() {
    type "$1" &> /dev/null \
        && echo "$1"       \
        || return 1
}

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
    for rst in "${!array[@]}"; {
        # trim down manpages
        gzip -9 > "${array[$rst]}" < <(
            while IFS= read -r line; do
                [[ $line =~ ^'.\"' ]] ||
                    printf '%s\n' "$line"
            done < <(
                set -x
                "$r2m" "$rst"
                set +x
            ))
    }
} |&
    while IFS= read -r line; do
        if [[ $line =~ ^\++\ ([^'set'].*) ]]; then
            printf '%s\n' "${BASH_REMATCH[1]}"
        fi
    done
