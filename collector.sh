#!/bin/bash

perl trim.pl | sed 's/Incoming:\[17103HCurrurrent/\nCurrent/g' | cut -d[ -f1 | cut -d' ' -f2
