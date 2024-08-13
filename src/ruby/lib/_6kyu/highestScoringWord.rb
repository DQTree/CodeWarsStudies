def high(x)
  x.split.max_by { |string| string.chars.reduce(0) { |sum, char| sum + char.ord - 96 } }
end