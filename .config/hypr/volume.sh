#!/bin/bash
if [ ! -e /tmp/wobpipe ]; then
   mkfifo /tmp/wobpipe
   tail -f /tmp/wobpipe | wob &
fi

previous_volume=0
while true
do
    current_volume=`wpctl get-volume @DEFAULT_SINK@ | awk '{print $2 * 100}'`
    if [ "${previous_volume}" != "${current_volume}" ]; then
        echo "${current_volume}" > /tmp/wobpipe
        previous_volume="${current_volume}"
    fi
done
