def find_nb(m):
    n = 0
    while True:
        sum = sum_of_cubes(n)
        if sum == m:
            return n
        elif sum > m:
            return -1
        n += 1
        
def sum_of_cubes(n):
    sum_of_n = n * (n + 1) // 2
    return sum_of_n ** 2