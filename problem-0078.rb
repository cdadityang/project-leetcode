# Subsets - Medium

## https://leetcode.com/problems/subsets/

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  arr = []
  (0..nums.length).each do |n|
    nums.combination(n).each { |m| arr.push(m) }
  end

  arr
end

p subsets([1,2,3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]


# Alternate sol
#def subsets(nums)
#  result = [[]]
#  for num in nums do
#    result += result.map{ |r| r + [num]}
#  end
#  result
#end
