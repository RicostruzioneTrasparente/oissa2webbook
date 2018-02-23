#!/bin/bash

## issue #4, rimuovo `a capo -`
perl -p -e 's/-\n$//g' ./00_oissa2.md >./00_oissa2Elab.md

## issue #3 rimuovo “,” e ’
sed -i -e 's/“/"/g;s/”/"/g' -e "s/’/'/g" 00_oissa2Elab.md

## issue #5
for i in {01..08}; do
	mkdir -p ./"$i"
    touch ./"$i"/.gitkeep
    mkdir -p ./"$i"/resources
    touch ./"$i"/resources/.gitkeep
done
