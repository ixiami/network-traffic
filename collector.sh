#!/bin/bash

perl trim.pl | sed 's/Incoming:\[[0-9]*HCurr/\nCurrent/g' | cut -d[ -f1 | cut -d':' -f2 \
|awk '{if($2 == "Bit/s") {print $1/1000} else if ($2 == "MBit/s"){print $1 * 1000} else {print $1}}'
