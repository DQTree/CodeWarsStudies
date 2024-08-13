def strip_comments(input, markers)
  markers.each do |marker|
    input.gsub!(/\s*#{Regexp.escape(marker)}.*/, '')
  end
  input
end