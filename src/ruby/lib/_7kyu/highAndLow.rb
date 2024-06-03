def high_and_low(numbers)
    arr = numbers.split(" ").map{ |c| Integer(c) }
    return "#{arr.max} #{arr.min}"
end