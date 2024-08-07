def longest_substring_of_string(s1, s2)
  hashmap = Hash.new { |hash, key| hash[key] = [] }
  s1.each_char.with_index { |char, index| hashmap[char] << index }

  longest_substring = ''
  current_substring = ''
  last_index = -1

  s2.each_char do |char|
    if hashmap[char]
      next_index = hashmap[char].find { |i| i > last_index }
      if next_index
        current_substring += char
        last_index = next_index
      else
        longest_substring = current_substring if current_substring.length > longest_substring.length
        break
      end
    else
      break
    end
    longest_substring = current_substring if current_substring.length > longest_substring.length

  end

  longest_substring
end