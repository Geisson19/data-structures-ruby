# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
# A subarray is a contiguous part of an array.

test_case = [-1, 3, -10, 6, 3] # 6

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums = [])
  dp = Array.new(nums.length, 0)

  nums.each_with_index do |num, i|
    dp[i] = [dp[i - 1] + num, num].max
  end

  dp.max
end

print max_sub_array(test_case)
