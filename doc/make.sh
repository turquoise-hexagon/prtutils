#!/bin/sh

cd "${0%/*}"

# check for rst2man
type rst2man.py > /dev/null 2>&1 || {
    echo 'error : install docutils first' >&2
    exit 1
}

rm -rf   man
mkdir -p man

for rst in rst/*.rst; do
    man=${rst##*/}
    man=man/${man%rst}1.gz

    rst2man.py "$rst" | gzip > "$man"
done
