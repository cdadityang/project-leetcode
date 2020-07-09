# Sum Root to Leaf Numbers - Medium

## https://leetcode.com/problems/sum-root-to-leaf-numbers/

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}

class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def sum_numbers(root)
  return rec(0, root)
end

def rec(sum, node)
  return 0 if node == nil

  sum = (10 * sum) + node.val

  return sum if !node.left and !node.right

  return rec(sum, node.left) + rec(sum, node.right)
end

a = TreeNode.new(2)
b = TreeNode.new(3)
c = TreeNode.new(1, a, b)

p sum_numbers(c)
# => 25

d = TreeNode.new(5)
e = TreeNode.new(1)
f = TreeNode.new(9, d, e)
g = TreeNode.new(0)

h = TreeNode.new(4, f, g)

p sum_numbers(h)
# => 1026