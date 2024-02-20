#!/bin/sh
# This should be run as superuser. 
# aura is a package manager for pacman and the aur

if [ "$EUID" -ne 0 ]
  then echo "This script needs to be run as root."
  exit
fi

# Dependency List
# - ngspice
# - yosys
# - iverilog
# - gtkwave
# - riscv-gnu-toolchain-bin
# - magic
# - OpenSTA
# - aura

if ! command -v aura &> /dev/null
then
    echo "aura could not be found in path. this script is specific to arch-based distros with the aura package manager"
    exit 1
fi

if ! command -v docker &> /dev/null
then
    aura -S docker containerd
fi

aura -S ngspice yosys iverilog gtkwave
aura -A riscv-gnu-toolchain-bin magic opensta-git

# Check versions 
git --version
docker --version
python3 --version
python3 -m pip --version
make --version
python3 -m venv -h
