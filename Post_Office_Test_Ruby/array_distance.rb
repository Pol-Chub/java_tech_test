#!/usr/bin/env ruby

# frozen_string_literal: true

# Exercise 1
#
# Please implement the distClosestNumbers function to enable
# it to return the distance between the two closest numbers
# in the given array.

class ArrayDistance
  def initialize(arr)
    @arr = arr
  end

  def enough_items?
    @arr.length > 1
  end

  def sort_array
    @arr.sort!
  end

  def find_distance_of_closest_items
    if enough_items?
      sort_array
      result = @arr.each_cons(2).map { |item1, item2| item2 - item1 }.min
      puts result
    else
      return 'Distance Test Fail. Not enough items in your array.'
    end
    result
  end
end
