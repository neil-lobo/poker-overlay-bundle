#!/bin/bash
echo $1
if [ $# -ge 1 ]
then
    REPLACE="s/\[\[ID\]\]/${1}/g"
    cp player.html.template $1.html
    sed -i $REPLACE $1.html
fi
