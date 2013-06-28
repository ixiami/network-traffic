#!/bin/bash

perl trim.pl | sed 's/Incoming:\[17103HCurr/\nCurrent/g' | cut -d[ -f1 | cut -d':' -f2 \
|awk '{if($2 == "Bit/s") {print $1/1000} else if ($2 == "mBit/s"){print $1 * 1000} else {print $1}}'
