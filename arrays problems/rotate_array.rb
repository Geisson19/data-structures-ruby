test_nums = [-1, -100, 3, 99]
test_k = 2

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums = [], k = 0)
  n = nums.length

  sol = nums.dup

  nums.each_index do |i|
    nums[(i + k) % n] = sol[i]
  end

  nums
end

print rotate(test_nums, test_k)

# Iterate troght a array and rotate the elements to the right by k steps, where k is non-negative.
