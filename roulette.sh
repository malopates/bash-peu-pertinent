#!/bin/bash
PS3="Quelle couleur miser ?"
options=("Tout sur le noir" "Tout sur le rouge")

    select choix in "${options[@]}"; do
        r=$((RANDOM%2))
        echo ${options[$r]#*le}
        if [ $r -eq 0 ] ; then
        echo "JACKPOT"
        else
        echo "perdu"
        fi
        break
    done
