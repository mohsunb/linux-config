#!/usr/bin/env bash
if [ "$EUID" -ne 0 ]
	then echo -e "\033[0;31mGame Mode script requires root privileges."
	exit
fi

cpupower frequency-set -g performance
cpupower frequency-set -u 3400MHz
intel-undervolt apply
chmod o+r /sys/devices/virtual/powercap/intel-rapl/intel-rapl:0/energy_uj

echo -e "\n\033[0;32mGame Mode is ready."
