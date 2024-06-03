def moveZeros(arr) 
    arr.partition { |e| e != 0 }.reduce(:+)
end