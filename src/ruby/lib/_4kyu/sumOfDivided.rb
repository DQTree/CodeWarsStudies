require 'prime'

def sum_of_divided(lst)
  list_factors = {}

  lst.each do |n|
    factors = Prime.prime_division(n.abs)
    factors.each do |factor, _|
      if list_factors[factor].nil?
        list_factors[factor] = [factor, n]
      else
        list_factors[factor][1] += n
      end
    end
  end

  list_factors.values.sort_by {|a| a[0]}
end