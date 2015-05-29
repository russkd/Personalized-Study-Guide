# Define a new instance method on the Array class called second, which returns the second item in an array (similar to the way .first and .last work in Ruby).

# If there is no element with index 1 in the array, return nil.

# [3, 4, 5].second 
# # => 4 

# [].second 
# # => nil

# def second(input)
#     input.slice(1)
# end

# p second([1])


class Array
  def second
    p self[9]
  end
end

[1,4,5].second
