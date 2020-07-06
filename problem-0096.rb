# Unique Binary Search Trees - Medium

## https://leetcode.com/problems/unique-binary-search-trees/

# @param {Integer} n
# @return {Integer}
def num_trees(n)
  arr = Array.new(n + 1, 0)
  arr[0] = arr[1] = 1

  (2..n).each do |i|
    (1..i).each do |j|
      arr[i] += arr[j - 1] * arr[i - j]
    end
  end

  arr[n]
end

p num_trees(3)
# => 5