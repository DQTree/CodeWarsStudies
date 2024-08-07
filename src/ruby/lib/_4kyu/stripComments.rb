def strip_comments(input, markers)
  regex = Regexp.union(markers.map { |marker| Regexp.escape(marker) })
  input.match(/.*?(?=#{regex})/).to_s.strip
end