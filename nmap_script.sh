#!/bin/bash

ips=(
    "127.0.0.0/24" # 대역대
)

for ip in "${ips[@]}"; do
    echo "Running nmap for $ip..."
    sanitized_ip=$(echo "$ip" | tr '/' '_')
    nmap "$ip" -oN "nmap_results_${sanitized_ip}.txt"
done
