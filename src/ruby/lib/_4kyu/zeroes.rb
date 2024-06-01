def zeroes(base, number)
    # 1. Prime factorization of the base
    factors = prime_factors(base)
  
    # 2. Find highest power of each prime factor that divides number
    min_trailing_zeroes = nil
  
    factors.each do |prime, exponent|
        power = highest_powers(number, prime)
        zeroes = (power / exponent).floor

        if min_trailing_zeroes.nil? || zeroes < min_trailing_zeroes
        min_trailing_zeroes = zeroes
        end
    end
  
    min_trailing_zeroes
end
  
def prime_factors(number)
    factors = {}

    #   Check for number of 2s in number
    while number % 2 == 0
        factors[2] = factors.fetch(2, 0) + 1
        number /= 2
    end

    #   Check for odd factors from 3 onwards
    factor = 3
    while factor * factor <= number
        while number % factor == 0
        factors[factor] = factors.fetch(factor, 0) + 1
        number /= factor
        end
        factor += 2
    end

    #   If number is still prime greater than 2
    factors[number] = factors.fetch(number, 0) + 1 if number > 2

    factors
end
  
def highest_powers(number, prime)
    divisor = prime
    count = 0

    while divisor <= number
        count += (number / divisor).floor
        divisor *= prime
    end

    count
end
