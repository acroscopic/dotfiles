#!/bin/bash
# This program is similar to neofetch/fastfetch/screenfetch
# It outputs basic system information with very minimal depencies
# I don't really have any better repositories to put this in ¯\_(ツ)_/¯

# Usage:
# chmod +x minfetch.sh
# ./minfetch.sh

echo "================== System Info =================="
echo "User:        $USER"
echo "Hostname:    $(hostname)"
echo "OS:         $(hostnamectl 2>/dev/null | grep 'Operating System' | cut -d: -f2 || uname -o)" # The spacing is intentional
echo "Kernel:      $(uname -r)"
echo "Shell:       $SHELL"
echo "Uptime:      $(uptime -p)"
echo "CPU:         $(lscpu | grep 'Model name' | sed 's/Model name:\s*//')"
echo "Memory:      $(free -h | awk '/^Mem:/ {print $2 " total, " $3 " used, " $4 " free"}')"
echo "================================================="
