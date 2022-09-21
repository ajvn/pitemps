#!/usr/bin/env bash
set -Eeou pipefail

# vcgencmd is available in libraspberrypi-bin package in
# Ubuntu 22.04
gpu="$(sudo vcgencmd measure_temp | awk -F"=" '{print $2}' | cut -d\' -f1)"
initial_cpu="$(cat /sys/class/thermal/thermal_zone0/temp)"
cpu="$(echo "scale=1; $initial_cpu/1000" | bc)"

echo -e "GPU Temp: $gpu \u2103"
echo -e "CPU Temp: $cpu \u2103"
