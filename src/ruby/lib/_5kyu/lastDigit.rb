def last_digit(n1, n2)
    # Special cases
    return 0 if n1 == 10
    return 1 if (n1 == 0 && n2 == 0) || n2 == 0
    return n1 if n2 == 1
    
    factorsN1 = Prime.prime_division(n1)
    
    factorsN1.each do |_prime, exponent|
      if exponent > 10

      end
    end

end