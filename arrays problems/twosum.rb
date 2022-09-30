# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

test_array = [2, 7, 11, 15]
test_target = 9

def two_sum(array, target)
  hash_sol = {}

  array_size = array.length

  for i in 0...array_size do

    if hash_sol[array[i]].nil?
      hash_sol[target - array[i]] = i
    else
      return [hash_sol[array[i]], i]
    end

  end
end

puts two_sum(test_array, test_target)
