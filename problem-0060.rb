# Permutation Sequence - Medium

## https://leetcode.com/problems/permutation-sequence/

# @param {Integer} n
# @param {Integer} k
# @return {String}
def get_permutation(n, k)
  (1..n).to_a.permutation.each_with_index do |n, i|
    return n.join() if k == i + 1
  end
end

p get_permutation(3, 3)
# => "213"

p get_permutation(4, 9)
# => "2314"