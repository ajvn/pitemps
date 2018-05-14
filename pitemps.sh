#!/bin/bash

gpu=$(sudo vcgencmd measure_temp | awk -F"=" '{print $2}')
initial_cpu=$(cat /sys/class/thermal/thermal_zone0/temp)
cpu=$((initial_cpu/1000))

echo "GPU Temp ==> $gpu"
echo "CPU Temp ==> $cpu'C"
