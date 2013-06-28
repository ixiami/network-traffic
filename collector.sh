#!/bin/bash

perl trim.pl | sed 's/Incoming:\[17103HCurrurrent/g' | cut -d[ -f1 | cut -d' ' -f2
