def exp_sum(n)
  # Using the generating function for the partition function
  partitions = [0] * (n + 1)
  partitions[0] = 1

  (1..n).each do |i|
    (i..n).each do |j|
      partitions[j] += partitions[j - i]
    end
  end

  partitions[n]
end