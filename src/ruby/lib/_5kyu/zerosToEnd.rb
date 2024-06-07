def move_zeros(arr)
    arr.partition { |e| e != 0 }.reduce(:+)
end