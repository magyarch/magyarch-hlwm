#!/bin/bash

# Get CPU frequency information
lscpu | grep "CPU MHz" | awk '{print $3}' > /tmp/cpufreq

# Wait for a short time to ensure the file is written
sleep 1

