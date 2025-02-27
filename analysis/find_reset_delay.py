#!/usr/bin/env python3

import argparse
from decimal import Decimal
import sys
from utils import find_reset_delay


def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('filename')
  args = parser.parse_args()

  delay = find_reset_delay(args.filename)

  if not delay:
    sys.exit(1)

  print(f'{delay:f}')

if __name__ == '__main__':
  main()
