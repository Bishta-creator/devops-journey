#!/bin/bash

LOG_DIR="/root/linux_practice/logs"

echo "Cleaning old logs from $LOG_DIR"

rm -f $LOG_DIR/*.log

echo "Log cleanup completed at $(date)"

