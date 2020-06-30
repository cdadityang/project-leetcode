# Two Sums - Easy

## https://leetcode.com/problems/two-sum/

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  newArr = []
  (0..nums.length - 1).each do |n|
    ((n + 1)..nums.length - 1).each do |m|
      newArr.push(n, m) if nums[n] + nums[m] == target && !newArr.include?(nums[n]) && !newArr.include?(nums[m])
    end
  end
  newArr
end

p two_sum([2, 7, 11, 15], 9)
# => [0, 1]