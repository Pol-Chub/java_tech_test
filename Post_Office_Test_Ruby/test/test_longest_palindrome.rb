#!/usr/bin/env ruby

# frozen_string_literal: true

# Testing cases for Exercise 2

require 'minitest/autorun'
require_relative '../longest_palindrome'

describe LongestPalindrome do
  before do
    @str = LongestPalindrome.new('find the longest palindrome #fddf# items Step on no pets yay root tenet repaper')
  end

  describe 'When it is an empty string: ' do
    it 'returns a warning message' do
      @str = LongestPalindrome.new('')
      assert_equal 'String not long enough', @str.find_longest_palindrome
    end
  end

  describe 'When it is one character long: ' do
    it 'returns a warning message' do
      @str = LongestPalindrome.new('z')
      assert_equal 'String not long enough', @str.find_longest_palindrome
    end
  end

  describe 'When an palindrome exists: ' do
    it 'return the palindrome found' do
      @str = LongestPalindrome.new('I have an Amore, Roma t-shirt')
      assert_equal 'amoreroma', @str.find_longest_palindrome
    end
  end

  describe 'When there are multiple palindromes: ' do
    it 'returns the longest one' do
      assert_equal 'steponnopets', @str.find_longest_palindrome
    end
  end
end
