def longest_substring_of_string(s1, s2)
  longest = ""

  (0...s1.length).each do |i|
    (i...s1.length).each do |j|
      substring = s1[i..j]

      if s2.include?(substring) && substring.length > longest.length
        longest = substring
      end
    end
  end

  longest
end