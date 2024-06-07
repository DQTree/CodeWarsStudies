def top_3_words(text)
  text.gsub(/[^a-z\s']/i, '').downcase.split(/\s+/).reject { |word| word.empty? || word =~ /^'+$/ }.tally.sort_by{|e| e[1] }.reverse.take(3).map{|e| e[0]}
end