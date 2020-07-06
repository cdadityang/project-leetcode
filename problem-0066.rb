# Plus One - Easy

## https://leetcode.com/problems/plus-one/

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  (digits.join.to_i + 1).to_s.split("").map { |n| n.to_i }
end

p plus_one([1, 2, 3])
# => [1, 2, 4]

p plus_one([4, 3, 2, 1])
# => [4, 3, 2, 2]