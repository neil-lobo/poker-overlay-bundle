#!/bin/bash
echo $1
if [ $# -ge 1 ]
then
    REPLACE="s/\[\[ID\]\]/${1}/g"
    cp hand.html.template $1-hand.html
    sed -i $REPLACE $1-hand.html
    cp chips-bet.html.template $1-chips-bet.html
    sed -i $REPLACE $1-chips-bet.html
    cp chips-balance.html.template $1-chips-balance.html
    sed -i $REPLACE $1-chips-balance.html
fi
