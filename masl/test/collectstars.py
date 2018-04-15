#!/usr/bin/env python
# encoding: utf-8
# Fold stars (asterisks) in all input lines into a single line.
# This is useful for consolidating MASL coverage maps.
import sys
l = list("aggregate coverage map:                                                                                                                                                                                               ")
for line in sys.stdin:
  sys.stdout.write(line)
  i = 0
  if ( "coverage map" in line ):
    for c in line:
      if ( '*' == c ): l[i] = '*'
      i = i + 1
      if ( i > 200 ): break
print ''.join(l)
