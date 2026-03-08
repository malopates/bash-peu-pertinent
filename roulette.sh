#!/bin/bash
PS3="Quelle couleur miser ? 
"
options=("Tout sur le noir !!" "Tout sur le rouge !!")
argent=1
probabilite=50
    select choix in "${options[@]}"; do
        r=$((RANDOM%2))
        printf "."
        sleep 1
        printf " ."
        sleep 1
        printf " .\n" 
        sleep 2

        echo ${options[$r]#*le}
        if [ $r -eq $(($REPLY-1)) ] ; then
        printf ""
        probabilite=$(($probabilite/2))
        argent=$((argent*2))
        printf "JACKPOT \nvous avez $argent€ ( $probabilite %% de chance d'aller aussi loin ) \n" 
        else
        printf "perdu...\n"
        break
        fi
    done
    
