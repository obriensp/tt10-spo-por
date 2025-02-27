#!/usr/bin/env python3

import argparse
from decimal import Decimal
import sys
from utils import max_current


def main():
  parser = argparse.ArgumentParser()
  parser.add_argument('filename')
  args = parser.parse_args()

  max = max_current(args.filename)

  if not max:
    sys.exit(1)

  print(f'{max:f}')

if __name__ == '__main__':
  main()
