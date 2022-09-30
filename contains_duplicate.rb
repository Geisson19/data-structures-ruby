nums = [1, 2, 3, 4]

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  nums_map = {}

  nums.each do |num|
    return true unless nums_map[num].nil?

    nums_map[num] = true
  end
  false
end

print contains_duplicate(nums)
