local solution = {}

function solution.zeros(n)
    local count = 0
    while n >= 5 do
        n = math.floor(n / 5)
        count = count + n
    end
    return count
end

return solution
