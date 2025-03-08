#!/bin/bash

LOG_FILE="bot.log"

while true; do
    echo "$(date): Starting bot..." | tee -a "$LOG_FILE"
    python3 main.py 2>&1 | tee -a "$LOG_FILE"
    
    echo "$(date): Bot crashed or stopped. Restarting in 10 seconds..." | tee -a "$LOG_FILE"
    sleep 10
done 