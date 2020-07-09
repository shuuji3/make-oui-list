#!/bin/sh

wget http://standards-oui.ieee.org/oui/oui.txt -O /tmp/oui.txt
grep -E '^[-0-9A-F]{8}' /tmp/oui.txt | unexpand -a | python -c 'while True: s = input(); print(s.split()[0].replace("-", ":"), " ".join(s.split()[2:]), sep="\t")' | sort > oui-format.txt
