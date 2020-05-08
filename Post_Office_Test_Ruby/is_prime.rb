#!/usr/bin/env ruby

require 'prime'

# Exercise 3
#
# Please implement the isNumberPrime method to take any number
# and check if it is prime, returning a Boolean.

class IsPrime
  # Findind primes using Ruby's Prime "prime?" method
  def the_easy_way(num)
    Prime.prime?(num)
  end

  # finding primes using regexp
  def check_prime_using_regexp(num)
    ("1" * num) !~ /^1?$|^(11+?)\1+$/
  end

  # finding primes using a loop
  def check_prime_using_a_loop(num)
    prime = true
    num_sqr_root = Math.sqrt(num).to_i
    unless num <= 1
      (2..num_sqr_root).each do |r|
        if num % r == 0
          prime = false
          break
        end
      end
    else
      prime = false
    end
    prime
  end
end
