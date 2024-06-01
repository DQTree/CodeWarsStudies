require 'prime'

def trailing_zeros(num, base)
    # 1. Prime factorization of the base
    factors = Prime.prime_division(base)
  
    # 2. Find highest power of each prime factor that divides number
    min_trailing_zeroes = nil
  
    factors.each do |prime, exponent|
        power = highest_powers(num, prime)
        zeroes = (power / exponent).floor

        if min_trailing_zeroes.nil? || zeroes < min_trailing_zeroes
        min_trailing_zeroes = zeroes
        end
    end
  
    min_trailing_zeroes
end
  
def highest_powers(number, prime)
    count = 0
    divisor = prime

    while divisor <= number
        count += (number / divisor).floor
        divisor *= prime
    end

    count
end