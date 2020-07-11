# Subsets II - Medium

## https://leetcode.com/problems/subsets-ii/

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets_with_dup(nums)
  arr = []
  (0..nums.length).each do |n|
    nums.combination(n).each { |m| arr.push(m) }
  end

  arr.map { |a| a.sort! }.uniq
end

p subsets_with_dup([1,2,2])
# => [[], [1], [2], [1, 2], [2, 2], [1, 2, 2]]

p subsets_with_dup([1,2,3,2])
# => [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [2, 2], [1, 2, 3], [1, 2, 2], [2, 2, 3], [1, 2, 2, 3]]
