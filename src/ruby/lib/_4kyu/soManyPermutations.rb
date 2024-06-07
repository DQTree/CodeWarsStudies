def permutations(string)
  string.chars.permutation.to_a.uniq.map &:join
end