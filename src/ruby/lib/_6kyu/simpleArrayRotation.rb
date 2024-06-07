def solve(arr)
    min_elem, min_idx = arr.each_with_index.min
    max_elem, max_idx = arr.each_with_index.max

    order = ""

    if min_idx == 0 && max_idx == arr.length - 1
        return "A"
    end

    if min_idx == arr.length - 1 && max_idx == 0
        return "D"
    end

    order += "R"

    if min_idx > max_idx
        order += "A"
    else
        order += "D"
    end

    order
end