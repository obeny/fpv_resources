#!/bin/bash

I="${1}"
O="$(basename -s .elf "${1}").hex"
arm-none-eabi-objcopy -O ihex "${I}" "${O}"
