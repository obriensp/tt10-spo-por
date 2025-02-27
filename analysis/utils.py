from decimal import Decimal


def avg_current(filename):
  sum = Decimal(0.0)
  count = 0

  with open(filename, 'rt') as f:
    for line in f:
      t, current = [Decimal(s) for s in line.split()]
      sum += current
      count += 1

  if count == 0:
    return None

  return sum / Decimal(count)


def max_current(filename):
  max = None

  with open(filename, 'rt') as f:
    for line in f:
      t, current = [Decimal(s) for s in line.split()]
      if not max or current > max:
        max = current

  return max


def find_reset_delay(filename, threshold=0.9, start_time=0.0005):
  is_primed = False
  with open(filename, 'rt') as f:
    for line in f:
      t, v = [Decimal(s) for s in line.split()]

      if not is_primed and t > start_time and v < threshold:
        # past start time and below threshold; begin search here
        is_primed = True

      if is_primed and v > threshold:
        return t - Decimal(start_time)

  return None


def find_max_frequency(filename):
  greatest_freq = None
  greatest_mag = Decimal(0.0)

  with open(filename, 'rt') as f:
    for line in f:
      freq, mag = [Decimal(s) for s in line.split()]
      if freq > 1.0 and mag > greatest_mag:
        greatest_freq = freq
        greatest_mag = mag

  return greatest_freq
