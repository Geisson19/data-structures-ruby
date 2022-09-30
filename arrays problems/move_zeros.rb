# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
# A subarray is a contiguous part of an array.

test_case = [0, 1, 0, 3, 12]

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums = [])
  j = 0
  (0...nums.length).each do |i|
    unless nums[i] == 0
      nums[i], nums[j] = nums[j], nums[i]
      j += 1
    end
  end
end
move_zeroes(test_case)
print test_case
