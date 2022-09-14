#!/bin/bash

while true; do
  current_date_time=$(date +%Y-%m-%d-%H-%M-%S)
  cp backup_me.txt backed_up_${current_date_time}.txt
  sleep 5;
done
