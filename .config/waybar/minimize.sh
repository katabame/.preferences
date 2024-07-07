#!/bin/bash
address=`hyprctl -j clients | jq -r ".[] | select(.class == \"$1\") | .address"`
workspace=`hyprctl -j clients | jq -r ".[] | select(.class == \"$1\") | .workspace.id"`
echo $address
echo $workspace

if [ "$workspace" == "1" ]; then
    hyprctl dispatch movetoworkspacesilent 2,address:$address
elif [ "$workspace" == "2" ]; then
    hyprctl dispatch movetoworkspacesilent 1,address:$address
fi
