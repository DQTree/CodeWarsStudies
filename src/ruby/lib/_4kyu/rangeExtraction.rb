def range_extraction(list)
  i = 0
  range = ""

  while i < list.length do
    start = i
    
    # End of range
    while i < list.length - 1 && list[i] + 1 == list[i + 1] do
      i += 1
    end
    
    # Thruples or more
    if i > start + 1
      range += "#{list[start]}-#{list[i]}"
    else
      # Single or pairs
      range += "#{list[start]}"
      range += ",#{list[i]}" if start != i
    end
    
    i += 1
    range += "," if i < list.length
  end
  
  range
end