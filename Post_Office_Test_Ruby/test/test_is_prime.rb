#!/usr/bin/env ruby

# frozen_string_literal: true

# Testing cases for Exercise 3

require 'minitest/autorun'
require_relative '../is_prime'

describe IsPrime do
  before do
    @prime = IsPrime.new
  end

  describe 'When the number is either 0 or 1: ' do
    it 'returns false if 0' do
      num = 0
      assert_equal false, @prime.the_easy_way(num)
      assert_equal false, @prime.check_prime_using_regexp(num)
      assert_equal false, @prime.check_prime_using_a_loop(num)
    end

    it 'returns false if 1' do
      num = 1
      assert_equal false, @prime.the_easy_way(num)
      assert_equal false, @prime.check_prime_using_regexp(num)
      assert_equal false, @prime.check_prime_using_a_loop(num)
    end
  end

  describe 'When a number is not prime: ' do
    it 'returns false' do
      num = 999
      assert_equal false, @prime.the_easy_way(num)
      assert_equal false, @prime.check_prime_using_regexp(num)
      assert_equal false, @prime.check_prime_using_a_loop(num)
    end
  end

  describe'When a number is prime: ' do
    it 'returns true' do
      num = 223
      assert_equal true, @prime.the_easy_way(num)
      assert_equal true, @prime.check_prime_using_regexp(num)
      assert_equal true, @prime.check_prime_using_a_loop(num)
    end
  end
end
