def last_digit(n1, n2)
  # Special cases
  return 1 if n2 == 0
  return 0 if n1 == 0

  last_digit_n1 = n1 % 10

  #   Cycle last digit
  cycle = []
  current = last_digit_n1
  loop do
    cycle << current
    current = (current * last_digit_n1) % 10
    break if cycle.include?(current)
  end

  #   Find digit corresponding to remainder
  digit_index = n2 % cycle.length
  digit_index = cycle.length if digit_index == 0

  cycle[digit_index - 1]
end