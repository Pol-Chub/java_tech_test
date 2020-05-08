#!/usr/bin/env ruby

# frozen_string_literal: true

# Exercise 2
#
# Please implement the returnLongestPalindrome function to
# find and return the longest substring of a given string
# that is a palindrome, include multi word palindromes.

class LongestPalindrome
  def initialize(str)
    @str = str
  end

  def string_long_enough?
    true unless @str.length.zero? || @str.length.nil? || @str.length == 1
  end

  # TODO - return longest palindrome with spaces or punctuation added
  # Refactor method - too long
  def find_longest_palindrome
    if string_long_enough?
      @str = @str.downcase.gsub(/[^A-Za-z0-9]/i, '')
      palindromes = []
      (2..@str.length-1).each do |i|
        @str.chars.each_cons(i).each {|x|palindromes.push(x) if x == x.reverse}
      end
      palindromes.map(&:join).max_by(&:length)
    else
      return 'String not long enough'
    end
  end
end
