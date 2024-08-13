# Symbols are not encoded
# Double of the letters index + 1?
def decode(s)
    s.chars.map do |c|
      doubled_char_code = c.ord * 2
      
      if doubled_char_code > 122
        doubled_char_code = 48 + (doubled_char_code - 122 - 1) % 78
      elsif doubled_char_code < 48
        doubled_char_code = 48
      end
      
      doubled_char_code.chr
    end.join
end