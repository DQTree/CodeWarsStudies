def spin_words(string)
    arr = string.split
    arr.map! do |word|
      word.length >= 5 ? word.reverse : word
    end
    arr.join(' ')
end