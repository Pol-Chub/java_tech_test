#!/usr/bin/env ruby

# frozen_string_literal: true

# Testing cases for Exercise 1

require 'minitest/autorun'
require_relative '../array_distance'

describe ArrayDistance do
  before do
    @arr = ArrayDistance.new([6, 9, 50, 15, 99, 7, 65])
  end

  describe 'When there are not enough items: ' do
    it 'return nil' do
      @arr = ArrayDistance.new([])
      assert_equal false, @arr.enough_items?
    end
  end

  describe 'When arrays are not sorted: ' do
    it 'returns the array sorted' do
      assert_equal [6, 7, 9, 15, 50, 65, 99], @arr.sort_array
    end
  end

  describe 'When calculating the distance between two closest numbers: ' do
    it 'returns a value' do
      assert_equal 1, @arr.find_distance_of_closest_items
    end

    it 'works when items have negative values' do
      @arr = ArrayDistance.new([-4, -56, 34, 66])
      assert_equal 32, @arr.find_distance_of_closest_items
    end

    it 'works when items have the same value' do
      @arr = ArrayDistance.new([1, 5, 9, 33, 5])
      assert_equal 0, @arr.find_distance_of_closest_items
    end
  end
end
